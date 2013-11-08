#= require './course'

App.Dessert = App.Course.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')
