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
      .otherwise
        redirectTo: '/'
