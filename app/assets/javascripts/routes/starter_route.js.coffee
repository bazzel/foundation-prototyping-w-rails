App.StarterRoute = Em.Route.extend
  model: ->
    @modelFor('dinner').get('starter')
