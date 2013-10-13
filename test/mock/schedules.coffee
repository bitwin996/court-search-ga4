'use strict'

angular.module('mockedJSON', []).
  value 'mockedSchedules',
    schedules: [
        date: new Date()
        #date: $filter('date')(new Date(), 'YYYY')
      ,
        date: new Date()
    ]

