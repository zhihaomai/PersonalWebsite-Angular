'use strict'

angular.module('PersonalWebsiteAngularApp')
	.controller('PhotoViewCtrl', ($scope, photoService) ->
		
		$scope.doneLoading = false;
		$scope.photos = photoService.query ((data) ->
			console.log "success"
			$scope.doneLoading = true;
		), (err) ->
			alert "Could not load photos"
			$scope.doneLoading = true;
  )

  	.directive('photoblock', () ->
    	templateUrl: 'views/photoBlock.html'
    	restrict: 'E'
  )