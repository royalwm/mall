package com.dw.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.ItemsMapper;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsExample;
import com.dw.mall.service.ItemsService;
import com.dw.mall.utils.EasyuiPagination;
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
    public EasyuiPagination<Items> listItems(int page, int size) {
        PageHelper.startPage(page, size);
        ItemsExample itemsExample = new ItemsExample();
        List<Items> list = itemsMapper.selectByExample(itemsExample);
        EasyuiPagination<Items> easyuiPagination = new EasyuiPagination<Items>();
        PageInfo<Items> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();
        easyuiPagination.setRows(list);
        easyuiPagination.setTotal(total);
        return easyuiPagination;
    }

}
