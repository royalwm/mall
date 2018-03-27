package com.dw.mall.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dw.mall.service.CategoryService;
import com.dw.mall.utils.EasyuiTree;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("/list")
	@ResponseBody
	public List<EasyuiTree> listItemsCategory(@RequestParam(value="id",defaultValue="0") long id){
		return categoryService.listItemsCategory(id);
	}
}
