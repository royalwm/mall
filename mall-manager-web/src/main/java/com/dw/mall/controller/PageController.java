package com.dw.mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/")
    public String index(HttpServletRequest request, HttpSession httpSession) {
        httpSession.setAttribute("basePath", request.getContextPath());
        return "index";
    }
    @RequestMapping("/{pageUrl}")
    public String html(@PathVariable String pageUrl) {
        return pageUrl;
    }
}
