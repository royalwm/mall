package com.dw.mall.controller;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.service.ContentService;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.EasyuiTree;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/content")
public class ContentController {
    @Autowired
    private ContentService contentService;
    @RequestMapping(value="/category/list",method=RequestMethod.GET)
    @ResponseBody
    public List<EasyuiTree> listContentCategory(@RequestParam(value="id",defaultValue="0") long id){
        return contentService.listContentCategory(id);
    }
    @RequestMapping(value="/category/create",method=RequestMethod.POST)
    @ResponseBody
    public int createContentCategory(Long parentId,String name){
        contentService.createContentCategory(parentId,name);
        return RestConstant.SUCCESS;
    }
    @RequestMapping(value="/category/update",method=RequestMethod.POST)
    @ResponseBody
    public int updateContentCategory(Long id,String name){
        contentService.updateContentCategory(id,name);
        return RestConstant.SUCCESS;
    }
    @RequestMapping(value="/category/delete",method=RequestMethod.POST)
    @ResponseBody
    public int deleteContentCategory(Long id){
        contentService.deleteContentCategory(id);
        return RestConstant.SUCCESS;
    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public EasyuiPagination listContent(Integer page, Integer rows,Long categoryId) {
        return contentService.listContent(page, rows,categoryId);
    }
}
