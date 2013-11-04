App.Dessert = DS.Model.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')

App.Dessert.FIXTURES = [
  id: 1
  name: 'Dessert'
  dishes: [11,12,13]
]
