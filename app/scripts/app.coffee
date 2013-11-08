'use strict'

angular.module('PersonalWebsiteAngularApp', [
  'ngResource'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/homeView.html'
        controller: 'HomeViewCtrl'
      .when '/resume',
        templateUrl: 'views/resumeView.html',
        controller: 'ResumeViewCtrl'
      .when '/contact',
        templateUrl: 'views/contactView.html',
        controller: 'ContactViewCtrl'
      .when '/video',
        templateUrl: 'views/videoView.html',
        controller: 'VideoViewCtrl'
      .when '/photo',
        templateUrl: 'views/photoView.html',
        controller: 'PhotoViewCtrl'
      .when '/blog',
        templateUrl: 'views/blogView.html',
        controller: 'BlogViewCtrl'
      .otherwise
        redirectTo: '/'
