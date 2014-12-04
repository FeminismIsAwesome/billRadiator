'use strict'

###*
 # @ngdoc function
 # @name clientCoffeeApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the clientCoffeeApp
###
angular.module('clientCoffeeApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
