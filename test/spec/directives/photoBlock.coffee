'use strict'

describe 'Directive: photoBlock', () ->

  # load the directive's module
  beforeEach module 'PersonalWebsiteAngularApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<photo-block></photo-block>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the photoBlock directive'
