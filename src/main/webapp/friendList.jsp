<%@ page import="com.tufriend.ssm.bean.FriendInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.github.pagehelper.PageInfo" %><%--
  Created by IntelliJ IDEA.
  User: 85211
  Date: 2018/8/16
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Friend List</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
    <div class="col-md-2">
        <table class="table table-hover">
            <tr>
                <th>
                    <p style="text-align: center">
                        <a href="addOneFriend.jsp">go to addOneFriend</a>
                    </p>
                </th>
            </tr>
        </table>
    </div>
    <div class="col-md-10">
        <table class="table table-hover">
            <tr>
                <th>
                    <p style="text-align: center">#</p>
                </th>
                <th>
                    <p style="text-align: center">Name</p>
                </th>
                <th>
                    <p style="text-align: center">Phone</p>
                </th>
                <th>
                    <p style="text-align: center">Address</p>
                </th>
                <th>
                    <p style="text-align: center">#</p>
                </th>
            </tr>
            <%
                PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
                List<FriendInfo> list = pageInfo.getList();
                for (FriendInfo f: list
                     ) {
            %>
            <tr>
                <td>
                    <p style="text-align: center"><%=f.getfId()%></p>
                </td>
                <td>
                    <p style="text-align: center"><%=f.getfName()%></p>
                </td>
                <td>
                    <p style="text-align: center"><%=f.getfPhone()%></p>
                </td>
                <td>
                    <p style="text-align: center"><%=f.getfAddress()%></p>
                </td>
                <td>
                    <p style="text-align: center">
                        <a href="/seleOneFriendInfo?id=<%=f.getfId()%>">Update</a>
                        <a href="/deleteOneFriendInfo?id=<%=f.getfId()%>" onclick="return confirm('确认删除该好友信息？')">Delete</a>
                    </p>
                </td>
            </tr>
            <%
                }
            %>
            <tr>
                <td>
                    <%
                        if (pageInfo.isHasPreviousPage()){
                    %>
                    <p style="text-align: center">
                        <a href="/selectAllFriendInfo?pn=<%=pageInfo.getPageNum() - 1%>">Previous page</a>
                    </p>
                    <%
                        }
                    %>
                </td>
                <td colspan="3">
                    <p style="text-align: center">
                        <a href="/selectAllFriendInfo?pn=<%=pageInfo.getPageNum()%>">
                            Current page&nbsp;<%=pageInfo.getPageNum()%>
                        </a>
                    </p>
                </td>
                <td>
                    <%
                        if (pageInfo.isHasNextPage()){
                    %>
                    <p style="text-align: center">
                        <a href="/selectAllFriendInfo?pn=<%=pageInfo.getPageNum() + 1%>">Last page</a>
                    </p>
                    <%
                        }
                    %>
                </td>
            </tr>

        </table>
    </div>
</div>
<script>

</script>
</body>
</html>
