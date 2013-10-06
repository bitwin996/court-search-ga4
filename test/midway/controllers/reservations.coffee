'use strict'

describe 'Controller: ReservationsCtrl', ->

  # load the controller's module
  beforeEach module 'courtSearchApp'

  ReservationsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ReservationsCtrl = $controller 'ReservationsCtrl', {
      $scope: scope
    }

  it 'should attach a list of Reservation to the scope', ->
    expect(scope.reservations.length).toBe 3

    date = new Date 2013, 1, 1
    expect(scope.reservations[0].date.getTime()).toBe date.getTime()

  #it 'should accept the user\'s attendance', ->
