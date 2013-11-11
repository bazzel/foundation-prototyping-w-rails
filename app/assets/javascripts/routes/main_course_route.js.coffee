App.MainCourseRoute = Em.Route.extend
  model: ->
    @modelFor('dinner').get('mainCourse')
  renderTemplate: (controller) ->
    @render 'course'
