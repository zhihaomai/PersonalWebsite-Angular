angular.module('PersonalWebsiteAngularApp')
	.controller('BlogViewCtrl', ($scope, blogService) ->
	
		$scope.doneLoading = false;
		$scope.blogPosts = blogService.list ((data) ->
			$scope.doneLoading = true;
			for i in [0..data.length-1] by 1
				data[i].body = $scope.adjustBodyText(data[i].body)
		), (err) ->
			alert "Could not load blog posts"
			$scope.doneLoading = true;

		$scope.adjustBodyText = (text) ->
			textArr = text.split('\n')
			newText = ""
			for each in textArr
				newText += "<div>"+each+"<br></div>"
			return newText

		$scope.likeClicked = (blog) ->
			blog.likes += 1
			$scope.updateDB blog
			
		$scope.dislikeClicked = (blog) ->
			blog.dislikes += 1
			$scope.updateDB blog

		$scope.updateDB = (blog) ->
			blogService.update
				id:blog.id
				likes:blog.likes
				dislikes:blog.dislikes
	)

	.directive('blogpost', () ->
		templateUrl: 'views/blogPost.html'
		restrict: 'E'
	)

	.filter("reverse", ->
		(items) ->
			items.slice().reverse()
	)