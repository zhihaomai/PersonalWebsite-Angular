'use strict'

angular.module('PersonalWebsiteAngularApp')
	.controller('BlogViewCtrl', ($scope, blogService) ->
	
		$scope.doneLoading = false;
		$scope.blogPosts = blogService.query ((data) ->
			console.log data
			$scope.doneLoading = true;
		), (err) ->
			alert "Could not load photos"
			$scope.doneLoading = true;
	)

	.directive('blogpost', () ->
		templateUrl: 'views/blogPost.html'
		restrict: 'E'
	)

	.filter("reverse", ->
		(items) ->
			items.slice().reverse()
	)