App.Dinner = DS.Model.extend
  venue: DS.attr 'string'
  startsAt: DS.attr 'date'
  address: DS.attr 'string'
  lat: DS.attr 'string'
  lng: DS.attr 'string'
  starter: DS.belongsTo 'starter'
  mainCourse: DS.belongsTo 'mainCourse'
  dessert: DS.belongsTo 'dessert'

