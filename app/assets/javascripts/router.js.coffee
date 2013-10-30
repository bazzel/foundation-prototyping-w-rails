# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'dinners',
    path: '/'
  , ->
    @route 'upcoming'

