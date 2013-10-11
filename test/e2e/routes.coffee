'use strict'

describe 'Schedule Routes', ->

  beforeEach ->
    browser().navigateTo '/'

  it 'should have a working /schedules route', ->
    browser().navigateTo '#/schedules'
    expect(browser().location().path()).toBe '/schedules'

  it 'should have a working /schedules/:id route', ->
    browser().navigateTo '#/schedules/1'
    expect(browser().location().path()).toBe '/schedules/1'
