<%@ page import="com.tufriend.ssm.bean.FriendInfo" %><%--
  Created by IntelliJ IDEA.
  User: 85211
  Date: 2018/8/16
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addOneFriend</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%
    FriendInfo friendInfo = (FriendInfo) request.getAttribute("friendInfo");
%>
<div class="row" style="margin-top: 13%;">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form class="form-horizontal" action="/updateOneFriendInfo" method="post">
            <div class="form-group" style="display: none;">
                <label for="Id" class="col-sm-2 control-label">Id</label>
                <div class="col-sm-10">
                    <input type="text" name="fId" class="form-control" id="Id" placeholder="Id" value="<%=friendInfo.getfId()%>">
                </div>
            </div>
            <div class="form-group">
                <label for="Name" class="col-sm-2 control-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" name="fName" class="form-control" id="Name" placeholder="Name" value="<%=friendInfo.getfName()%>">
                </div>
            </div>
            <div class="form-group">
                <label for="Phone" class="col-sm-2 control-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" name="fPhone" class="form-control" id="Phone" placeholder="Phone" value="<%=friendInfo.getfPhone()%>">
                </div>
            </div>
            <div class="form-group">
                <label for="Address" class="col-sm-2 control-label">Address</label>
                <div class="col-sm-10">
                    <input type="text" name="fAddress" class="form-control" id="Address" placeholder="Address" value="<%=friendInfo.getfAddress()%>">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" onclick="return confirm('确更新该好友信息？')">Update All</button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>
