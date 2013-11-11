App.DessertRoute = Em.Route.extend
  model: ->
    @modelFor('dinner').get('dessert')
  renderTemplate: (controller) ->
    @render 'course'
