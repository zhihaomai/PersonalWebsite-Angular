'use strict'

describe 'Directive: blogPost', () ->

  # load the directive's module
  beforeEach module 'PersonalWebsiteAngularApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<blog-post></blog-post>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the blogPost directive'
