<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/bootstrap-table.css">

    <script src="../../js/jquery-3.1.1.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <script src="../../js/bootstrap-table.js"></script>
    <script src="../../js/angular.min.js"></script>
    <script src="../../js/angular-route.min.js"></script>
    <script>
        angular.module('routeDemoApp',['ngRoute'])
                .controller('myCtrl', function ($scope) {
                    $scope.firstname = "bao";
                    $scope.lastname = "zhang";
                    $('#table').bootstrapTable({
                        striped: true,
                        search: true,
                        showRefresh: true,
                        showPaginationSwitch: true,
                        columns: [{
                            field: 'id',
                            title: 'Item ID'
                        }, {
                            field: 'name',
                            title: 'Item Name'
                        }, {
                            field: 'price',
                            title: 'Item Price'
                        }],
                        data: [{
                            id: 1,
                            name: 'Item 1',
                            price: '$1'
                        }, {
                            id: 2,
                            name: 'Item 2',
                            price: '$2'
                        }]
                    });
                })
                .config(['$routeProvider', function($routeProvider){
                    $routeProvider
                            .when('/home',{
                                templateUrl: "/RedirectTo?method=redirectTo&pageURL=home.jsp"
                            })
                            .when('/about',{
                                templateUrl: "/RedirectTo?method=redirectTo&pageURL=about.jsp"
                            })
                            .when('/main',{
                                templateUrl: "/RedirectTo?method=redirectTo&pageURL=main.jsp"
                            })
                            .when('/template', {
                                templateUrl: "template.jsp",
                                controller: "myCtrl"
                            })
                            .otherwise({redirectTo:'/'});
                }]);
    </script>
</head>
<body>
    <div ng-app="routeDemoApp">
        <jsp:include page="main.jsp"/>
        <ul>
            <li><a href="#/home">Home</a></li>
            <li><a href="#/about">About</a></li>
            <li><a href="#/template">Template</a></li>
        </ul>
        <div ng-view></div>
        <script id="template.jsp" type="text/ng-template">
            <div ng-controller="myCtrl">
                <label>名</label><input type="text" ng-model="firstname"><br>
                <label>姓</label><input type="text" ng-model="lastname"><br>
                姓名：{{firstname + " " + lastname}}
            </div>
            <table id="table" class="table table-hover"></table>
        </script>
    </div>
</body>
</html>
