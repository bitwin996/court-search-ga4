'use strict'

angular.module('courtSearchApp', ['ngResource'])
  .config ($routeProvider) ->
    $routeProvider

      .when '/schedules',
        templateUrl: 'views/schedules/index.html'
        controller: 'SchedulesCtrl'

      .when '/schedules/:scheduleId',
        templateUrl: 'views/schedules/show.html'
        controller: 'SchedulesCtrl'

      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'

      .when '/reservations',
        templateUrl: 'views/reservations/index.html'
        controller: 'ReservationsCtrl'

      .otherwise
        redirectTo: '/reservations'
