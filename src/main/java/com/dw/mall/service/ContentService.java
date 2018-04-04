package com.dw.mall.service;

import java.util.List;

import com.dw.mall.pojo.Content;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.EasyuiTree;

public interface ContentService {
    List<EasyuiTree> listContentCategory(long id);

    void createContentCategory(Long parentId, String name);

    void updateContentCategory(Long id, String name);

    void deleteContentCategory(Long id);

    EasyuiPagination listContent(Integer page, Integer rows, Long categoryId);

    int save(Content content);

    List<Content> listContent(Long bigad);

    int deleteContent(List<Long> ids);

	int editContent(Content content);

	Content queryNewsById(Long id);

}
