package com.dw.mall.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.ItemsCategoryMapper;
import com.dw.mall.pojo.ItemsCategory;
import com.dw.mall.pojo.ItemsCategoryExample;
import com.dw.mall.pojo.ItemsCategoryExample.Criteria;
import com.dw.mall.service.CategoryService;
import com.dw.mall.utils.EasyuiTree;
@Service
public class CategoryServiceImp implements CategoryService{
	@Autowired
	private ItemsCategoryMapper itemsCategoryMapper;
	@Override
	public List<EasyuiTree> listItemsCategory(long id) {
		ItemsCategoryExample example=new ItemsCategoryExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andParentIdEqualTo(id);
		List<ItemsCategory> categories = itemsCategoryMapper.selectByExample(example);
		ArrayList<EasyuiTree> arrayList = new ArrayList<>();
		for (ItemsCategory itemsCategory : categories) {
			EasyuiTree easyuiTree = new EasyuiTree();
			easyuiTree.setId(itemsCategory.getId());
			easyuiTree.setState(itemsCategory.getIsParent()?"closed":"open");
			easyuiTree.setText(itemsCategory.getName());
			arrayList.add(easyuiTree);
		}
		return arrayList;
	}

}
