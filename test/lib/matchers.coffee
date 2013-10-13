'use strict'

jasmine.Env.prototype.toEqualData_ = (actual, expected) ->
  angular.equals actual, expected

jasmine.Matchers.prototype.toEqualData = (expected) ->
  @env.toEqualData_ @actual, expected
