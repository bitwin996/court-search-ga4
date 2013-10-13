'use strict'

describe 'Controller: SchedulesCtrl', ->

  # load the controller's module
  beforeEach module 'courtSearchApp'

  SchedulesCtrl = {}
  scope = {}
  httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _$httpBackend_) ->
    httpBackend = _$httpBackend_
    httpBackend.expectGET('schedules').respond []

    scope = $rootScope.$new()
    SchedulesCtrl = $controller 'SchedulesCtrl', {
      $scope: scope
    }

  it 'should attach a list of Schedule to the scope', ->
    expect(scope.schedules).toEqualData []
