'use strict'

angular.module('PersonalWebsiteAngularApp')
.directive('navigation', () ->
	return {
		restrict: 'E'
		scope: {}
		templateUrl: 'views/navigation.html'
	}
)
