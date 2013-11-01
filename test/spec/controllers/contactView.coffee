'use strict'

describe 'Controller: ContactviewCtrl', () ->

  # load the controller's module
  beforeEach module 'PersonalWebsiteAngularApp'

  ContactviewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ContactviewCtrl = $controller 'ContactviewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
