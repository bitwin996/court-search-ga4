'use strict'

describe 'Service: Schedule', ->

  beforeEach ->
    @addMatchers
      toEqualData: (expected) ->
        angular.equals @actual, expected

  # load the service's module
  beforeEach module 'courtSearchApp'

  # instantiate service
  Schedule = {}
  httpBackend = {}
  beforeEach inject (_Schedule_, _$httpBackend_) ->
    Schedule = _Schedule_
    httpBackend = _$httpBackend_

  it 'should do something', ->
    expect(!!Schedule).toBe true

  scheduleData = [
      date: new Date
    ,
      date: new Date
  ]

  it 'should query Schedule data', ->
    httpBackend.expectGET('schedules').respond scheduleData

    schedules = Schedule.query()
    expect(schedules).toEqualData []

    httpBackend.expectGET('schedules').respond scheduleData
    schedules = Schedule.query()
    httpBackend.flush()
    expect(schedules).toEqualData scheduleData
