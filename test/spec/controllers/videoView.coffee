'use strict'

describe 'Controller: VideoviewCtrl', () ->

  # load the controller's module
  beforeEach module 'PersonalWebsiteAngularApp'

  VideoviewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    VideoviewCtrl = $controller 'VideoviewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
