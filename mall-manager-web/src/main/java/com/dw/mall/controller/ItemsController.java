package com.dw.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dw.mall.easyui.EasyuiPagination;
import com.dw.mall.pojo.Items;
import com.dw.mall.service.ItemsService;

@Controller
@RequestMapping("/items")
public class ItemsController {
    @Autowired
    private ItemsService itemsService;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Items getItemById(@PathVariable Long id) {
        return itemsService.getItemById(id);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public EasyuiPagination listItems(Integer page, Integer rows) {
        return itemsService.listItems(page, rows);
    }
}
