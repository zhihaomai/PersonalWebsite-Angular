'use strict'

angular.module('PersonalWebsiteAngularApp')
.factory 'blogService', ($resource) ->
	# $resource "http://127.0.0.1\\:3000/blogs/:id",
	$resource "http://zhihaomai.herokuapp.com/blogs/:id",
		id: "@id"
		likes: "@likes"
		dislikes: "@dislikes"
	,
		list:
			method: "GET"
			isArray: true
		update:
			method: "PUT"
			headers: { 'Content-Type': 'application/json' }

angular.module('PersonalWebsiteAngularApp')
.config ['$httpProvider', (provider) ->
	provider.defaults.useXDomain = true
	provider.defaults.headers.common["X-CSRF-Token"] = $("meta[name=csrf-token]").attr("content")
	delete provider.defaults.headers.common["X-Requested-With"]
]