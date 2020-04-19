package com.controller;

import com.bean.Manager;
import com.factory.PayElecFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/mag")
public class ManagerController {
    @RequestMapping(value = "login")
    public ModelAndView login(Manager manager) {
        ModelAndView modelAndView = new ModelAndView();
        boolean flag = false;
        flag = PayElecFactory.getManagerServiceImpl().verify(
                manager.getMagUserName(), manager.getMagUserPwd());
        if(flag) {
            modelAndView.setViewName("query");
        }else {
            modelAndView.setViewName("redirect:/login.jsp");
        }
        return modelAndView;
    }

    @RequestMapping(value = "query")
    public ModelAndView handleQuery() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("query");
        return modelAndView;

    }
}
