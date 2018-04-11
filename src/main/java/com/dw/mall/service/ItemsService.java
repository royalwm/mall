package com.dw.mall.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsComment;
import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.utils.EasyuiPagination;

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

	String getCategoryName(Long cid);

	String getItemBrand(Long cid);

	int saveComment(ItemsComment itemsComment);

	List<ItemsComment> getItemsComment(Long id, int page, int size);

	List<ItemsComment> selectCommentByType(Integer itemId, int type, int page);

}
