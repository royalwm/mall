package com.dw.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.easyui.EasyuiPagination;
import com.dw.mall.mapper.ItemsMapper;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsExample;
import com.dw.mall.service.ItemsService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ItemsServiceImpl implements ItemsService {
    @Autowired
    private ItemsMapper itemsMapper;
    @Override
    public Items getItemById(long id) {
        return itemsMapper.selectByPrimaryKey(id);
    }
    @Override
    public EasyuiPagination listItems(int page, int size) {
        PageHelper.startPage(page, size);
        ItemsExample itemsExample = new ItemsExample();
        List<Items> list = itemsMapper.selectByExample(itemsExample);
        EasyuiPagination easyuiPagination = new EasyuiPagination();
        PageInfo<Items> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();
        easyuiPagination.setRows(list);
        easyuiPagination.setTotal(total);
        return easyuiPagination;
    }

}
