App.Dinner = DS.Model.extend
  venue: DS.attr 'string'
  startsAt: DS.attr 'date'
  address: DS.attr 'string'
  lat: DS.attr 'number'
  lng: DS.attr 'number'
  starter: DS.belongsTo 'starter'
  mainCourse: DS.belongsTo 'mainCourse'

App.Dinner.FIXTURES = [
  id: 1
  venue: 'Gotcha! Weert'
  startsAt: new Date(2013, 5, 26, 18)
  address: 'Emmasingel 60, 6001 BD Weert'
  lat: 51.256074
  lng: 5.705399
  mainCourse: 1
  starter: 1
  dessert:
    name: 'Dessert'
,
  id: 2
  venue: 'Brasserie De Oude markt'
  startsAt: new Date(2013, 3, 10, 18, 30)
  address: 'Markt 21, 6001 EJ Weert'
  lat: 51.254663
  lng: 5.706707
,
  id: 3
  venue: 'Da Simone'
  startsAt: new Date(2013, 9, 23, 18)
  address: 'Korenmarkt 3/4, 6001 EM Weert'
  lat: 51.254529
  lng: 5.706919
,
  id: 4
  venue: 'De Apostel'
  startsAt: new Date(2012, 3, 18, 18, 30)
  address: 'Beekstraat 13, 6001 GG Weert'
  lat: 51.254878
  lng: 5.705978
,
  id: 5
  venue: 'Bretelli'
  startsAt: new Date(2016, 11, 10, 17)
  address: 'Hoogstraat 8, 6001 EV Weert'
  lat: 51.254677
  lng: 5.707265
,
  id: 6
  venue: 'De Oude Munt'
  startsAt: new Date(2015, 11, 10, 17)
  address: 'Muntpromenade 7, 6001 EH Weert'
  lat: 51.254368
  lng: 5.705163
,
  id: 7
  venue: 'Rhodos'
  startsAt: new Date(2013, 11, 10, 17)
  address: 'Emmasingel 60, 6001 BD Weert'
  lat: 51.251266
  lng: 5.705849
]
