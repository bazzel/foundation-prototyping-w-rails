App.Dish = DS.Model.extend
  name: DS.attr 'string'
  consumers: DS.hasMany('consumer')
