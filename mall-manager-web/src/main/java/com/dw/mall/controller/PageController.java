package com.dw.mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }
    @RequestMapping("/{pageUrl}")
    public String html(@PathVariable String pageUrl) {
        return pageUrl;
    }
}
