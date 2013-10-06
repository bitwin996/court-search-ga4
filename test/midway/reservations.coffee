'use strict'

describe 'Reservation', ->

  mod = null
  beforeEach ->
    mod = module 'courtSearchApp'

  it 'module should be registered', ->
    expect(mod).toNotBe null

