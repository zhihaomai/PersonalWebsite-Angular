'use strict'

angular.module('PersonalWebsiteAngularApp')
.factory 'blogService', ($resource) ->
	$resource("http://zhihaomai.herokuapp.com/blogs.json")

angular.module('PersonalWebsiteAngularApp')
.config ['$httpProvider', ($httpProvider) ->
	$httpProvider.defaults.useXDomain = true
	delete $httpProvider.defaults.headers.common["X-Requested-With"]
]