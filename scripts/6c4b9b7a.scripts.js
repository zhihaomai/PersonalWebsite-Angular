(function(){"use strict";angular.module("PersonalWebsiteAngularApp",["ngResource"]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/homeView.html",controller:"HomeViewCtrl"}).when("/resume",{templateUrl:"views/resumeView.html",controller:"ResumeViewCtrl"}).when("/contact",{templateUrl:"views/contactView.html",controller:"ContactViewCtrl"}).when("/video",{templateUrl:"views/videoView.html",controller:"VideoViewCtrl"}).when("/photo",{templateUrl:"views/photoView.html",controller:"PhotoViewCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").controller("HomeViewCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").controller("ContactViewCtrl",["$scope",function(){return console.log("Contact Page")}])}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").controller("ResumeViewCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this),function(){angular.module("PersonalWebsiteAngularApp").controller("navigationCtrl",["$scope","$location",function(a,b){return a.isActive=function(a){return a===b.$$path}}])}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").directive("navigation",function(){return{restrict:"E",scope:{},templateUrl:"views/navigation.html"}})}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").controller("VideoViewCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").controller("PhotoViewCtrl",["$scope","photoService",function(a,b){return a.doneLoading=!1,a.photos=b.query(function(){return console.log("success"),a.doneLoading=!0},function(){return alert("Could not load photos"),a.doneLoading=!0})}]).directive("photoblock",function(){return{templateUrl:"views/photoBlock.html",restrict:"E"}})}.call(this),function(){"use strict";angular.module("PersonalWebsiteAngularApp").factory("photoService",["$resource",function(a){return a("http://zhihaomai.herokuapp.com/photos.json")}]),angular.module("PersonalWebsiteAngularApp").config(["$httpProvider",function(a){return a.defaults.useXDomain=!0,delete a.defaults.headers.common["X-Requested-With"]}])}.call(this);