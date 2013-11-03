App.MainCourse = DS.Model.extend
  name: DS.attr 'string'
  dishes:  DS.hasMany('dish')

App.MainCourse.FIXTURES = [
  id: 1
  name: 'Main'
  dishes: [1,2,3,4,5,6]
]
