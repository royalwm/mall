package com.dw.mall.mapper;

import com.dw.mall.pojo.OrderUser;
import com.dw.mall.pojo.OrderUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderUserMapper {
    int countByExample(OrderUserExample example);

    int deleteByExample(OrderUserExample example);

    int deleteByPrimaryKey(String orderId);

    int insert(OrderUser record);

    int insertSelective(OrderUser record);

    List<OrderUser> selectByExample(OrderUserExample example);

    OrderUser selectByPrimaryKey(String orderId);

    int updateByExampleSelective(@Param("record") OrderUser record, @Param("example") OrderUserExample example);

    int updateByExample(@Param("record") OrderUser record, @Param("example") OrderUserExample example);

    int updateByPrimaryKeySelective(OrderUser record);

    int updateByPrimaryKey(OrderUser record);
}