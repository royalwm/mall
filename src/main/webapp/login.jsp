<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
    <link href='css/login.css' rel='stylesheet' type='text/css'>
</head>
<body>
<!--SIGN UP-->
<div class="login-form">
    <div class="avtar">
        <img src="images/avtar.jpg" width=100 height=100/>
    </div>
    <form class="m-t" role="form" id='my_login_form_test' name='f' action='<%=request.getContextPath()%>/login'
          method='post'>
        <input type="text" class="text"  name="username" placeholder="请输入用户名">
        <div class="key">
            <input type="password"  name="password" placeholder="请输入密码">
        </div>
        <div class="signin">
            <input type="submit" value="Login">
        </div>
    </form>
</div>
<div class="copy-rights">
    <p>Copyright &copy; 2018.Company 百货之家 All rights reserved
</div>
<script src="/js/jquery-easyui-1.4.1/jquery.min.js"></script>
</body>
</html>