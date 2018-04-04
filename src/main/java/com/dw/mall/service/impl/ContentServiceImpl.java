package com.dw.mall.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.mapper.ContentCategoryMapper;
import com.dw.mall.mapper.ContentMapper;
import com.dw.mall.pojo.Content;
import com.dw.mall.pojo.ContentCategory;
import com.dw.mall.pojo.ContentCategoryExample;
import com.dw.mall.pojo.ContentCategoryExample.Criteria;
import com.dw.mall.pojo.ContentExample;
import com.dw.mall.service.ContentService;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.EasyuiTree;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentCategoryMapper contentCategoryMapper;
    @Autowired
    private ContentMapper contentMapper;

    @Override
    public List<EasyuiTree> listContentCategory(long id) {
        ContentCategoryExample example = new ContentCategoryExample();
        Criteria createCriteria = example.createCriteria();
        createCriteria.andParentIdEqualTo(id);
        List<ContentCategory> categories = contentCategoryMapper.selectByExample(example);
        ArrayList<EasyuiTree> arrayList = new ArrayList<>();
        for (ContentCategory itemsCategory : categories) {
            EasyuiTree easyuiTree = new EasyuiTree();
            easyuiTree.setId(itemsCategory.getId());
            easyuiTree.setState(itemsCategory.getIsParent() ? "closed" : "open");
            easyuiTree.setText(itemsCategory.getName());
            arrayList.add(easyuiTree);
        }
        return arrayList;
    }

    @Override
    public void createContentCategory(Long parentId, String name) {
        ContentCategory contentCategory = new ContentCategory();
        contentCategory.setParentId(parentId);
        contentCategory.setName(name);
        contentCategory.setSortOrder(1);
        contentCategory.setIsParent(false);
        contentCategory.setStatus(1);
        contentCategory.setCreated(new Date());
        contentCategory.setCreated(new Date());
        contentCategoryMapper.insert(contentCategory);
    }

    @Override
    public void updateContentCategory(Long id, String name) {
        ContentCategory contentCategory = new ContentCategory();
        contentCategory.setId(id);
        contentCategory.setName(name);
        contentCategory.setUpdated(new Date());
        contentCategoryMapper.updateByPrimaryKeySelective(contentCategory);
    }

    @Override
    public void deleteContentCategory(Long id) {
        contentCategoryMapper.deleteByPrimaryKey(id);
    }

    @Override
    public EasyuiPagination listContent(Integer page, Integer size, Long categoryId) {
        PageHelper.startPage(page, size);
        List<Content> list = contentMapper.selectByCategoryId(categoryId);
        EasyuiPagination<Content> easyuiPagination = new EasyuiPagination<Content>();
        PageInfo<Content> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();
        easyuiPagination.setRows(list);
        easyuiPagination.setTotal(total);
        return easyuiPagination;
    }

    public List<Content> listContent(Long categoryId) {
        return contentMapper.selectByCategoryId(categoryId);
    }

    @Override
    public int save(Content content) {
        content.setCreated(new Date());
        content.setUpdated(new Date());
        return contentMapper.insert(content);
    }

    @Override
    public int deleteContent(List<Long> ids) {
        for (Long id : ids) {
            contentMapper.deleteByPrimaryKey(id);
        }
        return RestConstant.SUCCESS;
    }

	@Override
	public int editContent(Content content) {
		ContentExample contentExample = new ContentExample();
		com.dw.mall.pojo.ContentExample.Criteria createCriteria = contentExample.createCriteria();
		createCriteria.andIdEqualTo(content.getId());
		return contentMapper.updateByExampleSelective(content,contentExample);
	}

	@Override
	public Content queryNewsById(Long id) {
		return contentMapper.selectByPrimaryKey(id);
	}

}
