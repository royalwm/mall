package com.dw.mall.controller;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Content;
import com.dw.mall.service.ContentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PageController {
    @Autowired
    private ContentService contentService;
    @RequestMapping("/manager")
    public String index(HttpServletRequest request, HttpSession httpSession) {
        httpSession.setAttribute("basePath", request.getContextPath());
        return "index";
    }
    @RequestMapping("/{pageUrl}")
    public String html(@PathVariable String pageUrl) {
        return pageUrl;
    }
    @RequestMapping("/")
    public String html(Model model) {
        List<Content> bigAdList = contentService.listContent(RestConstant.CONTENT_CATEGORY.BIGAD);
        List<Content> searchHotList = contentService.listContent(RestConstant.CONTENT_CATEGORY.SEARCHHOT);
        List<Content> recommendList = contentService.listContent(RestConstant.CONTENT_CATEGORY.RECOMMEND);
        model.addAttribute("bigAdList", bigAdList);
        model.addAttribute("searchHotList", searchHotList);
        model.addAttribute("recommendList", recommendList);
        return "forward:/index.jsp";
    }
}