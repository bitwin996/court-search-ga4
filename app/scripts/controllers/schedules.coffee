'use strict'

angular.module('courtSearchApp')
  .controller 'SchedulesCtrl', ['$scope', 'Schedule', ($scope, Schedule) ->

    $scope.schedules = Schedule.query()

  ]
