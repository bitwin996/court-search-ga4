'use strict'

describe 'Controller: SchedulesCtrl', () ->

  # load the controller's module
  beforeEach module 'courtSearchApp'

  SchedulesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SchedulesCtrl = $controller 'SchedulesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
