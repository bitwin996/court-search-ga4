'use strict'

describe 'Service: Schedule', ->

  # load the service's module
  beforeEach module 'courtSearchApp', 'mockedJSON'

  # instantiate service
  Schedule = {}
  httpBackend = {}
  mockedSchedules = null
  beforeEach inject (_Schedule_, _$httpBackend_, _mockedSchedules_) ->
    Schedule = _Schedule_
    httpBackend = _$httpBackend_
    mockedSchedules = _mockedSchedules_

  it 'should do something', ->
    expect(!!Schedule).toBe true


  it 'should query Schedule list', ->
    data = mockedSchedules

    httpBackend.expectGET('schedules').respond data

    schedules = Schedule.query()
    expect(schedules).toEqualData {}

    httpBackend.expectGET('schedules').respond data
    schedules = Schedule.query()
    httpBackend.flush()
    expect(schedules).toEqualData data

  it 'should get a Schedule data', ->
    data = mockedSchedules.schedules[0]

    httpBackend.expectGET('schedules/1').respond data

    schedules = Schedule.get id:1
    expect(schedules).toEqualData {}

    httpBackend.expectGET('schedules/1').respond data
    schedule = Schedule.get id:1
    httpBackend.flush()
    expect(schedule).toEqualData data
