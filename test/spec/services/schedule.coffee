'use strict'

describe 'Service: Schedule', ->

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


  scheduleList = [
      date: new Date
    ,
      date: new Date
  ]

  scheduleData =
    date: new Date

  it 'should query Schedule list', ->
    httpBackend.expectGET('schedules').respond scheduleList

    schedules = Schedule.query()
    expect(schedules).toEqualData []

    httpBackend.expectGET('schedules').respond scheduleList
    schedules = Schedule.query()
    httpBackend.flush()
    expect(schedules).toEqualData scheduleList

  it 'should get a Schedule data', ->
    httpBackend.expectGET('schedules/1').respond scheduleData

    schedules = Schedule.get id:1
    expect(schedules).toEqualData {}

    httpBackend.expectGET('schedules/1').respond scheduleData
    schedule = Schedule.get id:1
    httpBackend.flush()
    expect(schedule).toEqualData scheduleData
