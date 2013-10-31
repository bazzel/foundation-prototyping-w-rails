App.Dinner = DS.Model.extend
  venue: DS.attr 'string'
  startsAt: DS.attr 'date'

App.Dinner.FIXTURES = [
  id: 1
  venue: 'Gotcha! Weert'
  startsAt: new Date(2013, 5, 26, 18)
,
  id: 2
  venue: 'Brasserie De Oude markt'
  startsAt: new Date(2013, 3, 10, 18, 30)
,
  id: 3
  venue: 'Da Simone'
  startsAt: new Date(2013, 9, 23, 18)
,
  id: 4
  venue: 'De Apostel'
  startsAt: new Date(2012, 3, 18, 18, 30)
,
  id: 5
  venue: 'Bretelli'
  startsAt: new Date(2016, 11, 10, 17)
,
  id: 6
  venue: 'De Oude Munt'
  startsAt: new Date(2015, 11, 10, 17)
,
  id: 7
  venue: 'Rhodos'
  startsAt: new Date(2013, 11, 10, 17)
]
