App.DessertRoute = Em.Route.extend
  model: ->
    @modelFor('dinner').get('dessert')
