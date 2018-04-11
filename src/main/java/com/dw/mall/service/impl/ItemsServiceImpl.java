package com.dw.mall.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.mapper.ItemsCategoryMapper;
import com.dw.mall.mapper.ItemsCommentMapper;
import com.dw.mall.mapper.ItemsDescMapper;
import com.dw.mall.mapper.ItemsMapper;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsCategory;
import com.dw.mall.pojo.ItemsComment;
import com.dw.mall.pojo.ItemsCommentExample;
import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.pojo.ItemsExample;
import com.dw.mall.pojo.ItemsExample.Criteria;
import com.dw.mall.service.ItemsService;
import com.dw.mall.utils.EasyuiPagination;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ItemsServiceImpl implements ItemsService {
	@Autowired
	private ItemsMapper itemsMapper;
	@Autowired
	private ItemsDescMapper itemsDescMapper;
	@Autowired
	private RestTemplate restTemplate;
	@Autowired
	private ItemsCategoryMapper itemsCategoryMapper;
	@Autowired
	private ItemsCommentMapper itemsCommentMapper;
	@Override
	public Items getItemById(long id) {
		Items items = itemsMapper.selectByPrimaryKey(id);
		ItemsDesc itemsDesc = getItemsDesc(id);
		items.setDesc(itemsDesc.getItemDesc());
		return items;
	}

	@Override
	public EasyuiPagination<Items> listItems(int page, int size) {
		PageHelper.startPage(page, size);
		ItemsExample itemsExample = new ItemsExample();
		itemsExample.setOrderByClause("id desc");
		List<Items> list = itemsMapper.selectByExample(itemsExample);
		EasyuiPagination<Items> easyuiPagination = new EasyuiPagination<Items>();
		PageInfo<Items> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		easyuiPagination.setRows(list);
		easyuiPagination.setTotal(total);
		return easyuiPagination;
	}

	@Override
	public int save(Items items) {
		itemsMapper.insert(items);
		ItemsDesc itemsDesc = new ItemsDesc();
		itemsDesc.setCreated(new Date());
		itemsDesc.setUpdated(new Date());
		itemsDesc.setItemId(items.getId());
		itemsDesc.setItemDesc(items.getDesc());
		return itemsDescMapper.insert(itemsDesc);
	}

	@Override
	public int delete(String idStr) {
		String[] ids = idStr.split(",");
		for (String id : ids) {
			ItemsExample itemsExample = new ItemsExample();
			Criteria createCriteria = itemsExample.createCriteria();
			createCriteria.andIdEqualTo(Long.valueOf(id));
			itemsMapper.deleteByExample(itemsExample);
		}
		return 1;
	}

	@Override
	public int importIndex(HttpServletRequest request) {
		try {
			ResponseEntity<String> postForEntity = restTemplate.postForEntity(
					request.getScheme() + "://" + request.getServerName() + ":8080/solr", null, String.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	public int soldout(List<Integer> ids) {
		for (Integer id : ids) {
			Items items = new Items();
			items.setId(Long.valueOf(id));
			items.setStatus(RestConstant.Items.SOLDOUT);
			itemsMapper.updateByPrimaryKeySelective(items);
		}
		return 1;
	}

	@Override
	public int putaway(List<Integer> ids) {
		for (Integer id : ids) {
			Items items = new Items();
			items.setId(Long.valueOf(id));
			items.setStatus(RestConstant.Items.PUTAWAY);
			itemsMapper.updateByPrimaryKeySelective(items);
		}
		return 1;
	}

	@Override
	public String update(Items items) {
		ItemsExample itemsExample = new ItemsExample();
		Criteria createCriteria = itemsExample.createCriteria();
		createCriteria.andIdEqualTo(items.getId());
		return String.valueOf(itemsMapper.updateByExampleSelective(items, itemsExample));
	}

	@Override
	public ItemsDesc getItemsDesc(Long id) {
		return itemsDescMapper.selectByPrimaryKey(id);
	}

	@Override
	public String getCategoryName(Long cid) {
		ItemsCategory itemsCategory = itemsCategoryMapper.selectByPrimaryKey(cid);
		StringBuilder sb = new StringBuilder();
		return getItemsTitle(itemsCategory, sb);
	}

public String getItemsTitle(ItemsCategory itemsCategory,StringBuilder sb) {
	if (!itemsCategory.getIsParent()) {
		Long parentId = itemsCategory.getParentId();
		ItemsCategory pCategory = itemsCategoryMapper.selectByPrimaryKey(parentId);
		getItemsTitle(pCategory,sb);
	}
	return sb.append(">"+itemsCategory.getName()).toString();
}

@Override
public String getItemBrand(Long cid) {
	return itemsCategoryMapper.selectByPrimaryKey(cid).getName();
}

@Override
public int saveComment(ItemsComment itemsComment) {
	return itemsCommentMapper.insertSelective(itemsComment);
}

@Override
public List<ItemsComment> getItemsComment(Long id,int page,int size) {
	ItemsCommentExample itemsCommentExample = new ItemsCommentExample();
	itemsCommentExample.setOrderByClause("createtime desc");
	com.dw.mall.pojo.ItemsCommentExample.Criteria createCriteria = itemsCommentExample.createCriteria();
	createCriteria.andItemIdEqualTo(id.intValue());
	List<ItemsComment> list = itemsCommentMapper.selectByExample(itemsCommentExample);
	return list;
}

@Override
public List<ItemsComment> selectCommentByType(Integer itemId, int type, int page) {
	PageHelper.startPage(page, 2);
	List<ItemsComment> list=null;
	if (type==0) {
		list=itemsCommentMapper.selectAllCommentsByItemId(itemId);
	}else {
		list=itemsCommentMapper.selectCommentsByItemIdAndType(itemId,type);
	}
	PageInfo<ItemsComment> pageInfo = new PageInfo<>(list);
	return list;
}
}
