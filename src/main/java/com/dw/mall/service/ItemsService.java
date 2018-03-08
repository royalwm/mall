package com.dw.mall.service;

import com.dw.mall.pojo.Items;
import com.dw.mall.utils.EasyuiPagination;

import javax.servlet.http.HttpServletRequest;

public interface ItemsService {
    Items getItemById(long id);

    EasyuiPagination listItems(int page, int size);

    int save(Items items);

    int delete(String ids);

    int importIndex(HttpServletRequest request);
}
