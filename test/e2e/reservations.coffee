'use strict'

describe 'Reservation list view', ->

  beforeEach ->
    #angular.module 'courtSearchApp'
    #browser().navigateTo '../../app/views/reservations/index.html'
    browser().navigateTo '/reservations'

  xit 'should go to the detail page of the Reservation', ->
    hash = element('.reservations')
    expect(element('.reservations li').count()).toBe 3
