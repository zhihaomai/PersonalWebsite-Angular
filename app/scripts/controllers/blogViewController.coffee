angular.module('PersonalWebsiteAngularApp')
	.controller('BlogViewCtrl', ($scope, blogService) ->
	
		$scope.doneLoading = false;
		$scope.blogPosts = blogService.query ((data) ->
			$scope.doneLoading = true;
			for i in [0..data.length-1] by 1
				data[i].id = i
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

		$scope.likeClicked = (id) ->
			$scope.blogPosts[id].likes += 1

		$scope.dislikeClicked = (id) ->
			$scope.blogPosts[id].dislikes += 1

	)

	.directive('blogpost', () ->
		templateUrl: 'views/blogPost.html'
		restrict: 'E'
	)

	.filter("reverse", ->
		(items) ->
			items.slice().reverse()
	)