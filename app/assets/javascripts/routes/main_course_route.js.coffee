App.MainCourseRoute = Em.Route.extend
  model: ->
    @modelFor('dinner').get('mainCourse')
