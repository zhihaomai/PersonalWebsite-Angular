'use strict'

describe 'Controller: ResumecontrollerCtrl', () ->

  # load the controller's module
  beforeEach module 'PersonalWebsiteAngularApp'

  ResumecontrollerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ResumecontrollerCtrl = $controller 'ResumecontrollerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
