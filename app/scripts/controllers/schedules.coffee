'use strict'

angular.module('courtSearchApp')
  .controller 'SchedulesCtrl', ['$scope', 'Schedule', ($scope, Schedule) ->

    #$scope.schedules = Schedule.query()

    $scope.schedules = []

    $scope.query = (params = {})->
      Schedule.query params, (data) ->
        $scope.schedules = data.schedules

  ]
