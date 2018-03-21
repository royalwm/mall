package com.dw.mall.service;

import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.utils.EasyuiPagination;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface ItemsService {
    Items getItemById(long id);

    EasyuiPagination listItems(int page, int size);

    int save(Items items);

    int delete(String ids);

    int importIndex(HttpServletRequest request);

    int soldout(List<Integer> ids);

    int putaway(List<Integer> ids);

    String update(Items items);

    ItemsDesc getItemsDesc(Long id);

}
