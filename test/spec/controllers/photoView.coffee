'use strict'

describe 'Controller: PhotoviewCtrl', () ->

  # load the controller's module
  beforeEach module 'PersonalWebsiteAngularApp'

  PhotoviewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PhotoviewCtrl = $controller 'PhotoviewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
