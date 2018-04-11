package com.dw.mall.mapper;

import com.dw.mall.pojo.ItemsComment;
import com.dw.mall.pojo.ItemsCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ItemsCommentMapper {
    int countByExample(ItemsCommentExample example);

    int deleteByExample(ItemsCommentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ItemsComment record);

    int insertSelective(ItemsComment record);

    List<ItemsComment> selectByExample(ItemsCommentExample example);

    ItemsComment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ItemsComment record, @Param("example") ItemsCommentExample example);

    int updateByExample(@Param("record") ItemsComment record, @Param("example") ItemsCommentExample example);

    int updateByPrimaryKeySelective(ItemsComment record);

    int updateByPrimaryKey(ItemsComment record);

	List<ItemsComment> selectCommentsByItemIdAndType(@Param("itemId")Integer itemId, @Param("type")int type);

	List<ItemsComment> selectAllCommentsByItemId(@Param("itemId")Integer itemId);
}