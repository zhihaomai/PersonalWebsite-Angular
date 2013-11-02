angular.module('PersonalWebsiteAngularApp')
.controller 'navigationCtrl', ($scope, $location) ->
	$scope.isActive = (currentUrl) ->
		currentUrl == $location.$$path
