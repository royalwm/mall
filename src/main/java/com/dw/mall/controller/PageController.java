package com.dw.mall.controller;

import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Content;
import com.dw.mall.pojo.User;
import com.dw.mall.service.ContentService;
import com.dw.mall.service.UserService;

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
    @Autowired
    private UserService userService;
    @RequestMapping("/manager")
    public String index(HttpServletRequest request, HttpSession httpSession,String username) {
        httpSession.setAttribute("basePath", request.getContextPath());
        User user=userService.selectUserByUsername(username);
        request.setAttribute("user", user);
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
        List<Content> newsFlashList = contentService.listContent(RestConstant.CONTENT_CATEGORY.NEWSFLASH);
        List<Content> intelligentPioneer = contentService.listContent(RestConstant.CONTENT_CATEGORY.INTELLIGENTPIONEER);
        List<Content> lifeStyleList = contentService.listContent(RestConstant.CONTENT_CATEGORY.LIFESTYLE);
        List<Content> familyStyleList = contentService.listContent(RestConstant.CONTENT_CATEGORY.FAMILYSTYLE);
        List<Content> fashionStyleList = contentService.listContent(RestConstant.CONTENT_CATEGORY.FASHIONSTYLE);
        model.addAttribute("bigAdList", bigAdList);
        model.addAttribute("searchHotList", searchHotList);
        model.addAttribute("recommendList", recommendList);
        model.addAttribute("newsFlashList", newsFlashList);
        model.addAttribute("intelligentPioneerList", intelligentPioneer);
        model.addAttribute("lifeStyleList", lifeStyleList);
        model.addAttribute("familyStyleList", familyStyleList);
        model.addAttribute("fashionStyleList", fashionStyleList);
        return "forward:/index.jsp";
    }
}