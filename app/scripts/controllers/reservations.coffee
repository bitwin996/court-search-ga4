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
      }
    ]
