App.Dish = DS.Model.extend
  name: DS.attr 'string'
  consumers: DS.hasMany('consumer')

App.Dish.FIXTURES = [
  id: 1
  name: 'Scaloppine di Vitello alla Parmigiana'
  consumers: [1,2,3]
,
  id: 2
  name: 'Ravioli di Capriolo Burro e Salvi'
  consumers: [4,5,6]
,
  id: 3
  name: 'Costolette d’Agnello al Forno'
  consumers: [7,8,9]
,
  id: 4
  name: 'Quattro Stagioni'
  consumers: [10,11,12]
,
  id: 5
  name: 'Melanzane e Ricotta'
  consumers: [13,14,15]
,
  id: 6
  name: 'Gamberoni all’ aglio e Vino Bianco'
  consumers: [16,17,18,19,20,21,22,23]
,
  id: 7
  name: 'Antipasto Misto all ’Italiana'
  consumers: [13,14,15]
,
  id: 8
  name: 'Zuppa di Pomodoro'
  consumers: [4,5,6]
,
  id: 9
  name: 'Calamari in Umido'
  consumers: [7,8,9]
,
  id: 10
  name: 'Minestrone Ligure'
  consumers: [1,2,3]
,
  id: 11
  name: 'Panna Cotta con Salsa al Kiwi'
  consumers: [4,5,6,21,20]
,
  id: 12
  name: 'Tiramisu'
  consumers: [7,8,9,22]
,
  id: 13
  name: 'Formaggi Misti'
  consumers: [1,2,3,23]
]
