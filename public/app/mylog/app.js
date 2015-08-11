var app = angular.module("MyLog", ['ui.router', 'flow','ui.bootstrap'], function ($interpolateProvider) {

    $interpolateProvider.startSymbol('<%');
    $interpolateProvider.endSymbol('%>');

});

app.config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise("/");

    $stateProvider
        .state('home', {
            url: "/",
            templateUrl: "/app/mylog/_home.html",
            controller: "HomeController",
            resolve: {
                mylog : function ($http) {
                    return $http.get('/police/getmylog');
                }
            }
        })


});

app.controller("HomeController", function ($scope, $http,$stateParams,mylog ) {
    console.log("HomeController.start");
    $scope.mylogs = mylog.data;



});
