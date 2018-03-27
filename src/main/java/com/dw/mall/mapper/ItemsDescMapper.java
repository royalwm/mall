package com.dw.mall.mapper;

import com.dw.mall.pojo.ItemsDesc;
import com.dw.mall.pojo.ItemsDescExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ItemsDescMapper {
    int countByExample(ItemsDescExample example);

    int deleteByExample(ItemsDescExample example);

    int deleteByPrimaryKey(Long itemId);

    int insert(ItemsDesc record);

    int insertSelective(ItemsDesc record);

    List<ItemsDesc> selectByExampleWithBLOBs(ItemsDescExample example);

    List<ItemsDesc> selectByExample(ItemsDescExample example);

    ItemsDesc selectByPrimaryKey(Long itemId);

    int updateByExampleSelective(@Param("record") ItemsDesc record, @Param("example") ItemsDescExample example);

    int updateByExampleWithBLOBs(@Param("record") ItemsDesc record, @Param("example") ItemsDescExample example);

    int updateByExample(@Param("record") ItemsDesc record, @Param("example") ItemsDescExample example);

    int updateByPrimaryKeySelective(ItemsDesc record);

    int updateByPrimaryKeyWithBLOBs(ItemsDesc record);

    int updateByPrimaryKey(ItemsDesc record);
}