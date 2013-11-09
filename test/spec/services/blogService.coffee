'use strict'

describe 'Service: Blogservice', () ->

  # load the service's module
  beforeEach module 'PersonalwebsiteangularApp'

  # instantiate service
  Blogservice = {}
  beforeEach inject (_Blogservice_) ->
    Blogservice = _Blogservice_

  it 'should do something', () ->
    expect(!!Blogservice).toBe true
