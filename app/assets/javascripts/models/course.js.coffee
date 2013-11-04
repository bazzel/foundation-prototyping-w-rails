App.Course = DS.Model.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')
