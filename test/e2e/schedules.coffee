'use strict'

describe 'Schedule list view', ->

  app = {}
  compile = {}

  data = [
      date: new Date()
    ,
      date: new Date()
  ]

  beforeEach ->
    app = angular.module 'courtSearchAppDev', ['courtSearchApp', 'ngMockE2E', 'mockedJSON']
    app.run ['$httpBackend', 'mockedSchedules', '$compile', ($httpBackend, mockedSchedules, $compile) ->
      compile = $compile
      #data = mockedSchedules.schedules

      $httpBackend.whenGET('/schedules').respond {schedules: data}
      ]

  xit 'should show Schedule date', ->
    browser().navigateTo '#/schedules'
    expect(browser().location().path()).toBe '/schedules'
    expect(element('.schedules').html()).toContain data[0].date
