package com.dw.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dw.mall.pojo.Items;
import com.dw.mall.service.ItemsService;

@RestController
@RequestMapping("/items")
public class ItemsController {
    @Autowired
    private ItemsService itemsService;
    @RequestMapping(value="/{id}",method=RequestMethod.GET)
    public Items getItemById(@PathVariable Long id){
        Items items=itemsService.getItemById(id);
        return itemsService.getItemById(id);
    }
}
