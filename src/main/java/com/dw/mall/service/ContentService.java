package com.dw.mall.service;

import com.dw.mall.pojo.Content;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.EasyuiTree;

import java.util.List;

public interface ContentService {
    List<EasyuiTree> listContentCategory(long id);

    void createContentCategory(Long parentId, String name);

    void updateContentCategory(Long id, String name);

    void deleteContentCategory(Long id);

    EasyuiPagination listContent(Integer page, Integer rows, Long categoryId);

    int save(Content content);

    List<Content> listContent(Long bigad);

    int deleteContent(List<Long> ids);

}
