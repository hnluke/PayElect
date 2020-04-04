package com.controller;

import com.bean.PayDetail;
import com.bean.Summary;
import com.bean.Users;
import com.factory.PayElecFactory;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/pay")
public class PayElectController {
    /**
     * 登录跳转到缴电费页面
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        return "payElec";
    }

    /**
     * 缴电费
     * @param users
     * @param payDetail
     * @param request
     * @return
     */
    @RequestMapping("/payElec")
    public String payElec(Users users, PayDetail payDetail, HttpServletRequest request) {
        String notice = "缴费失败";
        if(PayElecFactory.getPayElecServiceImpl().payElec(users, payDetail)) {
            notice = "缴费成功";
        }
        request.setAttribute("notice", notice);     // 缴费完毕回馈信息
        return "payElec";
    }

    /**
     * 查询缴费明细页面跳转
     * @return
     */
    @RequestMapping("query")
    public String query() {
        return "query";
    }

    /**
     * 定制查询
     * @param userNo        户号
     * @param userName      户主姓名
     * @param payDate       缴纳日期
     * @param payChannelId  资金渠道
     * @param payAreaId     所属片区
     * @return
     */
    @RequestMapping("/payElecHandle")
    public ModelAndView queryHandl(String userNo, String userName,
                                   String payDate, Integer payChannelId,
                                   Integer payAreaId, String pages) {
        ModelAndView mav = new ModelAndView();
        // 定制查询的结果list
        int page = 1;
        try {
            page = Integer.parseInt(pages);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        // 分页显示
        Page pageList =  PageHelper.startPage(page,10);
        List<PayDetail> list = PayElecFactory.getPayElecServiceImpl()
                .queryElec(userNo, userName, payDate, payChannelId, payAreaId);
        // 如果这一页没有记录，则返回上一页的记录给前端，同时当前页面-1
        if(pageList.getResult().size() == 0 && page > 1) {
            page = page -1 ;
            PageHelper.startPage(page,10);
            list = PayElecFactory.getPayElecServiceImpl()
                    .queryElec(userNo, userName, payDate, payChannelId, payAreaId);
        }
        // 查询条件的集合condition，条件回写
        List<Object> condition_list = new ArrayList<Object>();
        condition_list.add(userNo);
        condition_list.add(userName);
        condition_list.add(payDate);
        if(payChannelId != 0) {
            condition_list.add(payChannelId);
        }else{
            condition_list.add("");
        }
        if(payAreaId != 0) {
            condition_list.add(payAreaId);
        }else{
            condition_list.add("");
        }
        // 数据库查询记录
        mav.addObject("query_list", list);
        // 回写List
        mav.addObject("condition_list", condition_list);
        // 当面页数
        mav.addObject("current", page);
        // 渲染页面
        mav.setViewName("query");

        return mav;
    }

    /**
     * 汇总查询
     * @param request
     * @return
     */
    @RequestMapping("/summaryHandle")
    public ModelAndView summary(HttpServletRequest request, String pages) {
        int page = 1;
        try {
            page = Integer.parseInt(pages);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        // 接收前端选择的汇总条件
        String[] str = request.getParameterValues("summay");
        // 依据汇总查询的三个字段payDate, payAreaId, payChannelId
        String payDate = "";
        String payAreaId = "";
        String payChannelId = "";
        // 判断前端选择了哪个汇总条件
        if(str != null) {
            for(int i=0; i < str.length; i++) {
                if(str[i].equals("payDate")) {
                    payDate = "pay_date";
                }
                if(str[i].equals("payAreaId")) {
                    payAreaId = "pay_area_id";
                }
                if(str[i].equals("payChannelId")) {
                    payChannelId = "pay_channel_Id";
                }
            }
        }
        ModelAndView mav = new ModelAndView();
        // 汇总查询
        Page pageList =  PageHelper.startPage(page,10);
        List<Summary> query_summary = PayElecFactory.getPayElecServiceImpl()
                .querySummay(payDate, payAreaId, payChannelId);
        if(pageList.getResult().size() == 0 && page > 1) {
            page = page -1 ;
            PageHelper.startPage(page,10);
            query_summary = PayElecFactory.getPayElecServiceImpl()
                    .querySummay(payDate, payAreaId, payChannelId);
        }
        mav.addObject("query_summary", query_summary);
        mav.addObject("current", page);
        mav.setViewName("query");
        return mav;
    }
}
