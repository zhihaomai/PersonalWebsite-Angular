'use strict'

describe 'Service: photoService', () ->

  # load the service's module
  beforeEach module 'PersonalwebsiteangularApp'

  # instantiate service
  photoService = {}
  beforeEach inject (_photoService_) ->
    photoService = _photoService_

  it 'should do something', () ->
    expect(!!photoService).toBe true
