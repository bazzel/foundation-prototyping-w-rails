App.DinnersRoute = Em.Route.extend
  model: ->
    @store.find 'dinner'
