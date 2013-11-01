'use strict'

angular.module('PersonalWebsiteAngularApp')
.directive('navigation', () ->
	return {
		restrict: 'E'
		templateUrl: 'views/navigation.html'
		link: (scope, elem, attrs, ctrl) ->
			scope.setActive = () ->
				console.log "navigation item clicked"
				window.x = elem
				$(elem).find('li').removeClass('active')
			}
)
