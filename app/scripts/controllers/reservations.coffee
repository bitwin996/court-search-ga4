'use strict'

angular.module('courtSearchApp')
  .controller 'ReservationsCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.reservations = [
      {
        date: new Date 2013, 1, 1
        place: 'Makati'
      }
      {
        date: new Date 2013, 3, 4
        place: 'Pasig'
      }
      {
        date: new Date 2013, 2, 10
        place: 'Cavite'
      }
    ]

    $scope.orderPrep = 'date'
