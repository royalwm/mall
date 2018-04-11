package com.dw.mall.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Content;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsComment;
import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.pojo.User;
import com.dw.mall.service.ContentService;
import com.dw.mall.service.ItemsService;
import com.dw.mall.utils.CookieUtils;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.JSONUtil;

@Controller
@RequestMapping("/items")
public class ItemsController {
	@Autowired
	private ItemsService itemsService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private RedisClient redisClient;
	@RequestMapping(value = "/comment/{itemId}", method = RequestMethod.GET)
	@ResponseBody
	public List<ItemsComment> selectCommentByType(HttpServletRequest request,@PathVariable("itemId") Integer itemId,@RequestParam(name="type",defaultValue="0") int type,int page) throws Exception {
		return itemsService.selectCommentByType(itemId,type,page);
	}
	@RequestMapping(value = "/comment/{itemId}", method = RequestMethod.POST)
	@ResponseBody
	public int saveComment(HttpServletRequest request,@PathVariable("itemId") Integer itemId,ItemsComment itemsComment) throws Exception {
		String cookie = CookieUtils.getCookie(request, "token");
		if (StringUtils.isBlank(cookie)) {
			return RestConstant.FAILED;
		}
		String userStr = redisClient.get(cookie);
		User user = (User) JSONUtil.jsonStringToBean(userStr, User.class);
		itemsComment.setItemId(itemId);
		itemsComment.setUserId(user.getId().intValue());
		itemsComment.setUsername(user.getNickname());
		itemsComment.setCreatetime(new Date());
		itemsComment.setUpdatetime(new Date());
		return itemsService.saveComment(itemsComment);
	}
	@RequestMapping(value = "/comment/echo", method = RequestMethod.GET)
	public String echoComment(HttpServletRequest request,HttpServletResponse response,Model model) throws IOException {
		model.addAttribute("basePath",request.getContextPath());
		return "comment";
	}
	@RequestMapping(value = "/import", method = RequestMethod.POST)
	@ResponseBody
	public int importIndex(HttpServletRequest request) {
		return itemsService.importIndex(request);
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public int delete(@RequestParam("ids") String ids) {
		return itemsService.delete(ids);
	}

	@RequestMapping(value = "/soldout", method = RequestMethod.POST)
	@ResponseBody
	public int soldout(@RequestParam("ids") List<Integer> ids) {
		return itemsService.soldout(ids);
	}

	@RequestMapping(value = "/putaway", method = RequestMethod.POST)
	@ResponseBody
	public int putaway(@RequestParam("ids") List<Integer> ids) {
		return itemsService.putaway(ids);
	}

	@RequestMapping(value = "/echo", method = RequestMethod.GET)
	public String edit() {
		return "itemEdit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public String update(HttpServletRequest request, @RequestBody Items items) {
		String images = items.getImage();
		String[] imageStr = images.split(",");
		StringBuilder sb = new StringBuilder();
		String contextPath = request.getContextPath();
		for (String string : imageStr) {
			String substring = string.substring(string.lastIndexOf("/") + 1);
			sb.append(contextPath + "/upload/" + substring + ",");
		}
		String newImageStr = sb.toString().substring(0, sb.toString().length() - 1);
		items.setImage(newImageStr);
		items.setUpdated(new Date());
		return itemsService.update(items);
	}

	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public int saveItem(HttpServletRequest request, @RequestBody Items items) {
		String images = items.getImage();
		String[] imageStr = images.split(",");
		StringBuilder sb = new StringBuilder();
		String contextPath = request.getContextPath();
		for (String string : imageStr) {
			String substring = string.substring(string.lastIndexOf("/") + 1);
			sb.append(contextPath + "/upload/" + substring + ",");
		}
		String newImageStr = sb.toString().substring(0, sb.toString().length() - 1);
		items.setImage(newImageStr);
		items.setStatus((byte) 1);
		items.setCreated(new Date());
		items.setUpdated(new Date());
		return itemsService.save(items);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Items getItemById(@PathVariable Long id) {
		return itemsService.getItemById(id);
	}

	@RequestMapping(value = "/desc/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ItemsDesc getItemDesc(@PathVariable Long id) {
		return itemsService.getItemsDesc(id);
	}

	@RequestMapping(value = "/{id}/detial", method = RequestMethod.GET)
	public String getItemsDetial(HttpServletRequest request, @PathVariable Long id, ModelMap map) {
		Items items = itemsService.getItemById(id);
		Long cid = items.getCid();
		String itemsTitle=itemsService.getCategoryName(cid);
		map.addAttribute("itemsTitle", itemsTitle);
		String brand=itemsService.getItemBrand(cid);
		map.addAttribute("brand", brand);
		ItemsDesc itemsDesc = itemsService.getItemsDesc(id);
		String image = items.getImage();
		String[] images = image.split(",");
		items.setImages(images);
		map.addAttribute("item", items);
		map.addAttribute("basePath", request.getContextPath());
		map.addAttribute("itemsDesc", itemsDesc);
		map.addAttribute("scheme", request.getScheme());
		map.addAttribute("serverName", request.getServerName());
		List<ItemsComment> itemsCommentsList=itemsService.getItemsComment(id,1,2);
		int good=0;
		int mid=0;
		int bad=0;
		for (ItemsComment itemsComment : itemsCommentsList) {
			if (itemsComment.getLevel()==RestConstant.Comment.GOOD) {
				good++;
			}else if (itemsComment.getLevel()==RestConstant.Comment.MID) {
				mid++;
			}else if (itemsComment.getLevel()==RestConstant.Comment.BAD) {
				bad++;
			}
		}
		List<Content> searchHotList = contentService.listContent(RestConstant.CONTENT_CATEGORY.SEARCHHOT);
		map.addAttribute("searchHotList", searchHotList);
		if (itemsCommentsList.size()>2) {
			map.addAttribute("itemsCommentsList", itemsCommentsList.subList(0, 2));
		}else {
			map.addAttribute("itemsCommentsList", itemsCommentsList);
		}
		map.addAttribute("allCommentAccount", itemsCommentsList.size());
		map.addAttribute("good", good);
		map.addAttribute("mid", mid);
		map.addAttribute("bad", bad);
		return "item";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public EasyuiPagination listItems(Integer page, Integer rows) {
		return itemsService.listItems(page, rows);
	}

	@RequestMapping("/uploadPic")
	@ResponseBody
	public Map<String, Object> uploadPic(HttpServletRequest request, MultipartFile uploadFile, String time) {
		if (!uploadFile.isEmpty()) {
			// 上传文件路径
			String path = "d:/upload";
			// 上传文件名
			String uploadFilename = uploadFile.getOriginalFilename();
			String name = uploadFilename.substring(0, uploadFilename.lastIndexOf(".")) + "_" + time;
			String ext = uploadFilename.substring(uploadFilename.lastIndexOf("."));
			File uploadFilepath = new File(path, name + ext);
			// 判断路径是否存在，如果不存在就创建一个
			if (!uploadFilepath.getParentFile().exists()) {
				uploadFilepath.getParentFile().mkdirs();
			}
			// 将上传文件保存到一个目标文件当中
			String picPath = path + File.separator + name + ext;
			try {
				uploadFile.transferTo(new File(picPath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			HashMap<String, Object> map = new HashMap<>();
			map.put("error", 0);
			map.put("url", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/upload/" + name + ext);
			// JSONObject jsonObject = JSONObject.fromObject(map);
			return map;
		} else {
			HashMap<String, Object> map = new HashMap<>();
			map.put("error", 1);
			map.put("url", "错误信息");
			// JSONObject jsonObject = JSONObject.fromObject(map);
			return map;
		}
	}
}
