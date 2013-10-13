'use strict'

describe 'Controller: SchedulesCtrl', ->

  # load the controller's module
  beforeEach module 'courtSearchApp', 'mockedJSON'

  SchedulesCtrl = {}
  scope = {}
  httpBackend = {}
  mockedSchedules = null
  controller = {}

  # Initialize the controller and a mock scope
  beforeEach inject (_$controller_, $rootScope, _$httpBackend_, _mockedSchedules_) ->
    controller = _$controller_
    mockedSchedules = _mockedSchedules_
    httpBackend = _$httpBackend_

    scope = $rootScope.$new()
    SchedulesCtrl = controller 'SchedulesCtrl', {
      $scope: scope
    }

  it 'should attach an empty list of Schedule to the scope without query()', ->
    expect(scope.schedules).toEqualData []

    httpBackend.expectGET('schedules').respond {schedules:[]}
    scope.query()
    httpBackend.flush()
    expect(scope.schedules).toEqualData []

  it 'should attach a list of Schedule to the scope', ->
    data = mockedSchedules
    expect(scope.schedules).toEqualData []

    httpBackend.expectGET('schedules').respond data
    scope.query()
    httpBackend.flush()
    expect(scope.schedules).toEqualData data.schedules
