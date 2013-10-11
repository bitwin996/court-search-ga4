'use strict'

angular.module('courtSearchApp')
  .factory 'Schedule', ['$resource', ($resource) ->
    $resource 'schedules/:scheduleId', {scheduleId: null},
      query:
        method: 'GET'
        params:
          scheduleId: '@scheduleId'
        isArray: true
  ]
