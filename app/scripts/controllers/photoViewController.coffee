'use strict'

angular.module('PersonalWebsiteAngularApp')
	.controller('PhotoViewCtrl', ($scope, photoService) ->
		$scope.photos = photoService.getPhotos()
  )

  	.directive('photoblock', () ->
    	templateUrl: 'views/photoBlock.html'
    	restrict: 'E'
  )