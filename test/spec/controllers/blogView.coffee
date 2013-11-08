'use strict'

describe 'Controller: BlogviewCtrl', () ->

  # load the controller's module
  beforeEach module 'PersonalWebsiteAngularApp'

  BlogviewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BlogviewCtrl = $controller 'BlogviewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
