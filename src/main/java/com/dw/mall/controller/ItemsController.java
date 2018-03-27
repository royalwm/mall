package com.dw.mall.controller;


import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.service.ItemsService;
import com.dw.mall.utils.EasyuiPagination;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/items")
public class ItemsController {
    @Autowired
    private ItemsService itemsService;

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
    public String update(@RequestBody Items items) {
        return itemsService.update(items);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public int saveItem(HttpServletRequest request,@RequestBody Items items) {
    	String images = items.getImage();
    	String[] imageStr = images.split(",");
    	StringBuilder sb = new StringBuilder();
    	String contextPath = request.getContextPath();
    	for (String string : imageStr) {
    		String substring = string.substring(string.lastIndexOf("/")+1);
        	sb.append(contextPath+"/upload/"+substring+",");
		}
    	String newImageStr = sb.toString().substring(0,sb.toString().length()-1);
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
    public String getItemsDetial(HttpServletRequest request,@PathVariable Long id,ModelMap map) {
        Items items = itemsService.getItemById(id);
        ItemsDesc itemsDesc=itemsService.getItemsDesc(id);
        String image = items.getImage();
        String[] images = image.split(",");
        items.setImages(images);
        map.addAttribute("item", items);
        map.addAttribute("basePath",request.getContextPath());
        map.addAttribute("itemsDesc",itemsDesc);
        map.addAttribute("scheme",request.getScheme());
        map.addAttribute("serverName",request.getServerName());
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
            map.put("url",request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath() + "/upload/" + name
                            + ext);
            //JSONObject jsonObject = JSONObject.fromObject(map);
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
