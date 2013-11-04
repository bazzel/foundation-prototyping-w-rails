App.Starter = DS.Model.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')

App.Starter.FIXTURES = [
  id: 1
  name: 'Starter'
  dishes: [7,8,9,10]
]
