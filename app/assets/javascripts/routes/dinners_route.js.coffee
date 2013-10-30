App.DinnersRoute = Em.Route.extend
  model: ->
    @get('store').find 'dinner'

App.DinnersIndexRoute = Em.Route.extend
  model: ->
    @modelFor 'dinners'

App.DinnersUpcomingRoute = Em.Route.extend
  model: ->
    @get('store').filter('dinner', (item) ->
      item.get('startsAt') > new Date()
    )
  renderTemplate: (controller) ->
    @render 'dinners/index',
      controller: controller
