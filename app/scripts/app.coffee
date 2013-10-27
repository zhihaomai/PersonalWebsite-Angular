'use strict'

angular.module('PersonalWebsiteAngularApp', [
  'ngResource'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/homeView.html'
        controller: 'HomeController'
      .otherwise
        redirectTo: '/'
