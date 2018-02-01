package com.dw.mall.service;

import java.util.List;

import com.dw.mall.pojo.Items;

public interface ItemsService {
    Items getItemById(long id);
    List<Items> listItems();
}
