'use strict'

describe 'Directive: navigation', () ->

  # load the directive's module
  beforeEach module 'PersonalWebsiteAngularApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<navigation></navigation>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the navigation directive'
