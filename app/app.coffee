'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/todo', {templateUrl: '/views/pages/todo.html'})
    .when('/editor', {templateUrl: '/views/pages/editor.html'})

    # Catch all
    .otherwise({redirectTo: '/editor'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
