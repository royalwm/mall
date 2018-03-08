package com.dw.mall.service;

import com.dw.mall.pojo.Items;
import com.dw.mall.utils.EasyuiPagination;

public interface ItemsService {
    Items getItemById(long id);

    EasyuiPagination listItems(int page,int size);
}
