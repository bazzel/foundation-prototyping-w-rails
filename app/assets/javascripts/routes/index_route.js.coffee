App.IndexRoute = Em.Route.extend
  beforeModel: ->
    @transitionTo 'dinners.upcoming'
