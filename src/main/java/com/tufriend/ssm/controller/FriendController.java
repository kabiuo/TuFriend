package com.tufriend.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tufriend.ssm.bean.FriendInfo;
import com.tufriend.ssm.service.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
public class FriendController {
    @Autowired
    private FriendService friendService;

    /*
    * 删除一个好友的信息
    * */
    @RequestMapping("/deleteOneFriendInfo")
    public String deleteOneFriendInfo(@RequestParam("id") int id){
        friendService.deleteOneFriendInfo(id);
        return "index";
    }
    /*
    * 修改一个好友的信息
    * */
    @RequestMapping("/updateOneFriendInfo")
    public String updateOneFriendInfo(@Valid FriendInfo friendInfo){
        friendService.updateOneFriendInfo(friendInfo);
        return "index";
    }
    /*
    * 查询一个好友的信息
    * */
    @RequestMapping("/seleOneFriendInfo")
    public String seleOneFriendInfo(@RequestParam("id") int id, Model model){
        FriendInfo friendInfo = friendService.seleOneFriendInfo(id);
        model.addAttribute("friendInfo", friendInfo);
        return "updateOneFriendInfo";
    }

    /*
    * 查询全部Friend的全部Info
    * */
    @RequestMapping("/selectAllFriendInfo")
    public String selectAllFriendInfo(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
        //        引入PageHelper插件,传入页码，以及每页的大小
        PageHelper.startPage(pn, 8);
//        开始进行分页查询
        List<FriendInfo> friendInfoList = friendService.selectAllFriendInfo();
//        使用PageInfo包装查询后的解结果,再将包装后的结果交给页面,传入连续显示的页数
        PageInfo page = new PageInfo(friendInfoList, 8);
        model.addAttribute("pageInfo", page);
        return "friendList";
    }

    /*
    * 添加一个好友的信息
    * */
    @RequestMapping("/addOneFriend")
    public String addOneFriend(@Valid FriendInfo friendInfo){
//        System.out.println(friendInfo.getfName());
        friendService.addOneFriend(friendInfo);
        return "index";
    }
}
