package com.dw.mall.mapper;

import com.dw.mall.pojo.ItemsCategory;
import com.dw.mall.pojo.ItemsCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ItemsCategoryMapper {
    int countByExample(ItemsCategoryExample example);

    int deleteByExample(ItemsCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ItemsCategory record);

    int insertSelective(ItemsCategory record);

    List<ItemsCategory> selectByExample(ItemsCategoryExample example);

    ItemsCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ItemsCategory record, @Param("example") ItemsCategoryExample example);

    int updateByExample(@Param("record") ItemsCategory record, @Param("example") ItemsCategoryExample example);

    int updateByPrimaryKeySelective(ItemsCategory record);

    int updateByPrimaryKey(ItemsCategory record);
}