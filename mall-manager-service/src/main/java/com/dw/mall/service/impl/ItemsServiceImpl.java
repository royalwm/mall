package com.dw.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.ItemsMapper;
import com.dw.mall.pojo.Items;
import com.dw.mall.service.ItemsService;

@Service
public class ItemsServiceImpl implements ItemsService {
    @Autowired
    private ItemsMapper itemsMapper;
    @Override
    public Items getItemById(long id) {
        return itemsMapper.selectByPrimaryKey(id);
    }
    @Override
    public List<Items> listItems() {
        // TODO Auto-generated method stub
        return null;
    }

}
