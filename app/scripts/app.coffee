'use strict'

angular.module('courtSearchApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/reservations',
        templateUrl: 'views/reservations/index.html'
        controller: 'ReservationsCtrl'
      .otherwise
        redirectTo: '/reservations'
