# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'dinners', ->
    @route 'upcoming'
    @route 'past'

  @resource 'dinner',
    path: 'dinners/:dinner_id'

