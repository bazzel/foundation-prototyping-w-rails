#= require './course'

App.Starter = App.Course.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')

# https://github.com/emberjs/data/blob/master/TRANSITION.md#embedded-records
App.StarterSerializer = DS.RESTSerializer.extend(
  extractSingle: (store, type, payload, id, requestType) ->
    dishes = payload.starter.dishes
    dishIds = dishes.mapProperty("id")
    payload.dishes = dishes
    payload.starter.dishes = dishIds
    @_super.apply this, arguments
)

