'use strict'

# http://tobyho.com/2012/01/30/write-a-jasmine-matcher/

###
jasmine.Env.prototype.toEqualData_ = (actual, expected) ->
  angular.equals actual, expected

jasmine.Matchers.prototype.toEqualData = (expected) ->
  @env.toEqualData_ @actual, expected
###

beforeEach ->
  @addMatchers
    toEqualData: (expected) ->
      angular.equals @actual, expected
