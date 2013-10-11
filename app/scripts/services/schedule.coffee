'use strict'

angular.module('courtSearchApp')
  .factory 'Schedule', ['$resource', ($resource) ->
    $resource 'schedules/:id', {},
      query:
        method: 'GET'
        params:
          id: ''
        isArray: true

      get:
        method: 'GET'
        params:
          id: '@id'
  ]
