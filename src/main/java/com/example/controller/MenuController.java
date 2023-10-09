package com.example.controller;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.example.common.Result;
import com.example.entity.Account;
import com.example.service.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class MenuController {

	@Resource
	private AdminInfoService adminInfoService;
	@Resource
	private UserInfoService userInfoService;
	@Resource
	private AdvertiserInfoService advertiserInfoService;
	@Resource
	private LinkInfoService linkInfoService;


    @GetMapping(value = "/getMenu", produces="application/json;charset=UTF-8")
    public String getMenu(HttpServletRequest request) {
        Account account = (Account) request.getSession().getAttribute("user");
        Integer level;
        if (account == null) {
            level = 1;
        } else {
            level = account.getLevel();
        }
        JSONObject obj = new JSONObject();
        obj.putOpt("code", 0);
        obj.putOpt("msg", "");
        JSONArray dataArray = new JSONArray();

        dataArray.add(getJsonObject("/", "系统Home", "layui-icon-home", "/"));

        JSONObject tableObj = new JSONObject();
        tableObj.putOpt("title", "Info Management");
        tableObj.putOpt("icon", "layui-icon-table");
		if (1 == level) {
			JSONArray array = new JSONArray();
			array.add(getJsonObject("adminInfo", "Admin info", "layui-icon-table", "adminInfo"));
			array.add(getJsonObject("userInfo", "User info", "layui-icon-table", "userInfo"));
			array.add(getJsonObject("messageInfo", "Comment info", "layui-icon-table", "messageInfo"));
			array.add(getJsonObject("advertiserInfo", "公告信息", "layui-icon-table", "advertiserInfo"));
			array.add(getJsonObject("linkInfo", "友情链接", "layui-icon-table", "linkInfo"));
			array.add(getJsonObject("goodsInfo", "Movie info", "layui-icon-table", "goodsInfo"));
			array.add(getJsonObject("cartInfo", "收藏栏信息", "layui-icon-table", "cartInfo"));
			array.add(getJsonObject("orderInfo", "Order info", "layui-icon-table", "orderInfo"));
			array.add(getJsonObject("commentInfo", "Rating info", "layui-icon-table", "commentInfo"));
			array.add(getJsonObject("typeInfo", "Movie type info", "layui-icon-table", "typeInfo"));
			array.add(getJsonObject("accountAdminInfo", "Profile", "layui-icon-user", "accountAdminInfo"));
			tableObj.putOpt("list", array);
		}

		if (2 == level) {
			JSONArray array = new JSONArray();
			array.add(getJsonObject("messageInfo", "Comment info", "layui-icon-table", "messageInfo"));
			array.add(getJsonObject("advertiserInfo", "公告信息", "layui-icon-table", "advertiserInfo"));
			array.add(getJsonObject("linkInfo", "友情链接", "layui-icon-table", "linkInfo"));
			array.add(getJsonObject("goodsInfo", "Movie info", "layui-icon-table", "goodsInfo"));
			array.add(getJsonObject("cartInfo", "收藏栏信息", "layui-icon-table", "cartInfo"));
			array.add(getJsonObject("orderInfo", "Order info", "layui-icon-table", "orderInfo"));
			array.add(getJsonObject("commentInfo", "Rating info", "layui-icon-table", "commentInfo"));
			array.add(getJsonObject("typeInfo", "Movie type info", "layui-icon-table", "typeInfo"));
			array.add(getJsonObject("accountUserInfo", "Profile", "layui-icon-user", "accountUserInfo"));
			tableObj.putOpt("list", array);
		}


        dataArray.add(tableObj);

        dataArray.add(getJsonObject("updatePassword", "Reset password", "layui-icon-password", "updatePassword"));
        dataArray.add(getJsonObject("login", "Log out", "layui-icon-logout", "login"));

        obj.putOpt("data", dataArray);
        return obj.toString();
    }

    private JSONObject getJsonObject(String name, String title, String icon, String jump) {
        JSONObject object = new JSONObject();
        object.putOpt("name", name);
        object.putOpt("title", title);
        object.putOpt("icon", icon);
        object.putOpt("jump", jump);
        return object;
    }

    @GetMapping(value = "/getTotal", produces="application/json;charset=UTF-8")
    public Result<Map<String, Integer>> getTotle() {
        Map<String, Integer> resultMap = new HashMap<>();
		resultMap.put("adminInfo", adminInfoService.findAll().size());
		resultMap.put("userInfo", userInfoService.findAll().size());
		resultMap.put("advertiserInfo", advertiserInfoService.findAll().size());
		resultMap.put("linkInfo", linkInfoService.findAll().size());

        return Result.success(resultMap);
    }
}
