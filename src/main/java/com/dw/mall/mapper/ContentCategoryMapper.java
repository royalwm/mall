package com.dw.mall.mapper;

import com.dw.mall.pojo.ContentCategory;
import com.dw.mall.pojo.ContentCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ContentCategoryMapper {
    int countByExample(ContentCategoryExample example);

    int deleteByExample(ContentCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ContentCategory record);

    int insertSelective(ContentCategory record);

    List<ContentCategory> selectByExample(ContentCategoryExample example);

    ContentCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ContentCategory record, @Param("example") ContentCategoryExample example);

    int updateByExample(@Param("record") ContentCategory record, @Param("example") ContentCategoryExample example);

    int updateByPrimaryKeySelective(ContentCategory record);

    int updateByPrimaryKey(ContentCategory record);
}