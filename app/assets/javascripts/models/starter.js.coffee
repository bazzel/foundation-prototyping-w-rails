#= require './course'

App.Starter = App.Course.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')
