<%--
  Created by IntelliJ IDEA.
  User: zhangbaoming
  Date: 16/11/29
  Time: 上午10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-table.css">

    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-table.js"></script>
    <script src="js/angular.min.js"></script>
    <script src="js/angular-route.min.js"></script>
    <script>
        function login() {
            window.location.href = "/RedirectTo?method=redirectTo&pageURL=main.jsp";
        }
    </script>
    <style type="text/css">
        .pp-body {
            background: linear-gradient(45deg, rgb(0, 51, 102), rgb(51, 122, 183)) fixed;
        }
        .pp-login {
            color: #FFF;
            max-width: 330px;
            padding: 15px;
            text-align: center;
            vertical-align: middle;
            margin-top: 15%;
            height: auto;
        }
        .pp-form {

        }
        .pp-form .form-control {
            height: auto;
            padding: 10px;
        }
        .pp-form button {
            margin-top: 10px;
        }
    </style>
</head>
<body class="pp-body">
    <div class="container pp-login">
        <form role="form" class="pp-form">
            <input class="form-control" required autofocus type="email" placeholder="email address">
            <input class="form-control" required type="password" placeholder="password">
            <button class="btn btn-lg btn-primary btn-block" type="button" onclick="login()">登录</button>
        </form>
    </div>
</body>
</html>
