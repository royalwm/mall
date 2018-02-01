package com.dw.mall.service;

import com.dw.mall.easyui.EasyuiPagination;
import com.dw.mall.pojo.Items;

public interface ItemsService {
    Items getItemById(long id);

    EasyuiPagination listItems(int page,int size);
}
