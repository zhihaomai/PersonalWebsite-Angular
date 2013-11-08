'use strict'

angular.module('PersonalWebsiteAngularApp')
.factory 'photoService', ($resource) ->
	$resource("http://zhihaomai.herokuapp.com/photos.json")

angular.module('PersonalWebsiteAngularApp')
.config ['$httpProvider', ($httpProvider) ->
	$httpProvider.defaults.useXDomain = true
	delete $httpProvider.defaults.headers.common["X-Requested-With"]
]

