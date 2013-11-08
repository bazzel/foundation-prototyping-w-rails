#= require './course'

App.MainCourse = App.Course.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')
