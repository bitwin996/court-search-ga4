'use strict'

describe 'Reservation list view', ->

  beforeEach ->
    #angular.module 'courtSearchApp'
    #browser().navigateTo '../../app/views/reservations/index.html'
    browser().navigateTo '/reservations'

  it 'should go to the detail page of the Reservation', ->
    hash = element('.reservations')
	#dump hash
	#for k,v of hash
	#  dump k,v
    expect(element('.reservations li').count()).toBe 3

  xit 'should load app module', ->
    module = angular.module 'courtSearchApp'
    expect(module).not.to.equal null
