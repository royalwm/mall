package com.dw.mall.service.impl;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.mapper.ItemsMapper;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.ItemsExample;
import com.dw.mall.pojo.ItemsExample.Criteria;
import com.dw.mall.service.ItemsService;
import com.dw.mall.utils.EasyuiPagination;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Service
public class ItemsServiceImpl implements ItemsService {
    @Autowired
    private ItemsMapper itemsMapper;
    @Autowired
    private RestTemplate restTemplate;

    @Override
    public Items getItemById(long id) {
        return itemsMapper.selectByPrimaryKey(id);
    }

    @Override
    public EasyuiPagination<Items> listItems(int page, int size) {
        PageHelper.startPage(page, size);
        ItemsExample itemsExample = new ItemsExample();
        List<Items> list = itemsMapper.selectByExample(itemsExample);
        EasyuiPagination<Items> easyuiPagination = new EasyuiPagination<Items>();
        PageInfo<Items> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();
        easyuiPagination.setRows(list);
        easyuiPagination.setTotal(total);
        return easyuiPagination;
    }

    @Override
    public int save(Items items) {
        return itemsMapper.insert(items);
    }

    @Override
    public int delete(String idStr) {
        String[] ids = idStr.split(",");
        for (String id : ids) {
            ItemsExample itemsExample = new ItemsExample();
            Criteria createCriteria = itemsExample.createCriteria();
            createCriteria.andIdEqualTo(Long.valueOf(id));
            itemsMapper.deleteByExample(itemsExample);
        }
        return 1;
    }

    @Override
    public int importIndex(HttpServletRequest request) {
        try {
            ResponseEntity<String> postForEntity = restTemplate.postForEntity("http://127.0.0.1/solr",null,String.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }

    @Override
    public int soldout(List<Integer> ids) {
        for (Integer id : ids) {
            Items items = new Items();
            items.setId(Long.valueOf(id));
            items.setStatus(RestConstant.Items.SOLDOUT);
            itemsMapper.updateByPrimaryKeySelective(items);
        }
        return 1;
    }

    @Override
    public int putaway(List<Integer> ids) {
        for (Integer id : ids) {
            Items items = new Items();
            items.setId(Long.valueOf(id));
            items.setStatus(RestConstant.Items.PUTAWAY);
            itemsMapper.updateByPrimaryKeySelective(items);
        }
        return 1;
    }

    @Override
    public String update(Items items) {
        return String.valueOf(itemsMapper.updateByExample(items, null));
    }

}
