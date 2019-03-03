package com.tufriend.ssm.test;

import com.github.pagehelper.PageInfo;
import com.tufriend.ssm.bean.FriendInfo;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml", "classpath:dispatcherServlet-servlet.xml"})
public class MvcTest {
    @Autowired
    WebApplicationContext context;

    MockMvc mockMvc;
    @Before
    public void initMockMvc(){
        mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
    }

    @Test
    public void testPage() throws Exception {
        /*
         * 模拟请求拿到返回值
         */
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/selectAllFriendInfo").param("pn", "1"))
                .andReturn();

        //请求成功以后  请求域中有pageINfo；我们可以取出来pageInfo进行验证
        MockHttpServletRequest request = mvcResult.getRequest();
        PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
        //进行输出
//        Enumeration<String> re = request.getAttributeNames();
//        for(Enumeration e=re;e.hasMoreElements();){
//            System.out.println(e.toString());
//        }
        System.out.println("当前页码：" + pageInfo.getPageNum());
        System.out.println("总页码：" + pageInfo.getPages());
        System.out.println("总记录数：" + pageInfo.getTotal());
        int[] nums = pageInfo.getNavigatepageNums();
        System.out.println("在页面需要连续显示的页码：");
        for (int i : nums) {
            System.out.print(i + "、");
        }
        System.out.println();
        /*
         *
         * 获取员工数据
         */
        List<FriendInfo> friendInfoList1 = (List<FriendInfo>) pageInfo.getList();
        for (FriendInfo f: friendInfoList1
             ) {
            System.out.println(f.getfName());
        }
    }
}
