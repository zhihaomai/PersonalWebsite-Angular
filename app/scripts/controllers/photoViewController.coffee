'use strict'

angular.module('PersonalWebsiteAngularApp')
  .controller('PhotoViewCtrl', ($scope) ->

  	# Temporary photo object placeholders until JSON Feed is running
	photo1 = { 
	   photoUrl: 'http://summitvoice.files.wordpress.com/2011/10/600px-grand_canyon_colors.jpg?w=300&h=300'
	   title: 'Grand Canyons'
	   subtitle: 'Taken on my vacation in the Spring of 2013' 
	   tags: {
	     tag1: 'mountains'
	     tag2: 'RV'
	     tag3: 'family'
	   }
	}
	photo2 = { 
	   photoUrl: 'http://images.askmen.com/top_10/travel/1254860479_top-10-cool-cruises_1.jpg'
	   title: 'Bahamas'
	   subtitle: 'Taken on my vacation in the Winter of 2012' 
	   tags: {
	     tag1: 'cruise'
	     tag2: 'ocean'
	     tag3: 'family'
	   }
	}
	photo3 = { 
	   photoUrl: 'http://cosmosvacations.ca/Common/Images/Destinations/toronto-cn-tower.jpg'
	   title: 'Toronto'
	   subtitle: 'Taken on my work term in the Winter of 2013' 
	   tags: {
	     tag1: 'work'
	     tag2: 'XL'
	     tag3: 'co-op'
	   }
	}
  	# Temporary photo object placeholders until JSON Feed is running
	photo4 = { 
	   photoUrl: 'http://img4-2.allyou.timeinc.net/i/2013/4/free-vacation-m.jpg?300:300'
	   title: 'DisneyWorld'
	   subtitle: 'Taken on my vacation in the Summer of 2012' 
	   tags: {
	     tag1: 'disney'
	     tag2: 'girlfriend'
	     tag3: 'summer'
	   }
	}
	photo5 = { 
	   photoUrl: 'http://ecx.images-amazon.com/images/I/51tTnnrOFBL._SY300_.jpg'
	   title: 'Chicago'
	   subtitle: 'Taken on my vacation in the Fall of 2013' 
	   tags: {
	     tag1: 'anniversary'
	     tag2: 'girlfriend'
	     tag3: 'dreamcity'
	   }
	}
	photo6 = { 
	   photoUrl: 'http://friendsofpointpelee.com/img/products/CSS-PPNP-med.jpg'
	   title: 'Point Pelee'
	   subtitle: 'Taken on my vacation in the Summer of 2013' 
	   tags: {
	     tag1: 'family'
	     tag2: 'daytrip'
	     tag3: 'summer'
	   }
	}

	$scope.photos = [photo1, photo2, photo3, photo4, photo5, photo6]
	)

  	.directive('photoblock', () ->
    	templateUrl: 'views/photoBlock.html'
    	restrict: 'E'
  	)