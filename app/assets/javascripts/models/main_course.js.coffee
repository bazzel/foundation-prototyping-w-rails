#= require './course'

App.MainCourse = App.Course.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')

# https://github.com/emberjs/data/blob/master/TRANSITION.md#embedded-records
#App.MainCourseSerializer = DS.RESTSerializer.extend(
  #extractSingle: (store, type, payload, id, requestType) ->
    #console.log arguments
    #dishes = payload.main_course.dishes
    #dishIds = dishes.mapProperty("id")
    #payload.dishes = dishes
    #payload.main_course.dishes = dishIds
    #@_super.apply this, arguments
#)
