package com.dw.mall.mapper;

import com.dw.mall.pojo.OrderItems;
import com.dw.mall.pojo.OrderItemsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderItemsMapper {
    int countByExample(OrderItemsExample example);

    int deleteByExample(OrderItemsExample example);

    int deleteByPrimaryKey(String id);

    int insert(OrderItems record);

    int insertSelective(OrderItems record);

    List<OrderItems> selectByExample(OrderItemsExample example);

    OrderItems selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") OrderItems record, @Param("example") OrderItemsExample example);

    int updateByExample(@Param("record") OrderItems record, @Param("example") OrderItemsExample example);

    int updateByPrimaryKeySelective(OrderItems record);

    int updateByPrimaryKey(OrderItems record);
}