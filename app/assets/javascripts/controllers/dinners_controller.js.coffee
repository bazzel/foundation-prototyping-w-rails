App.DinnersController = Em.ArrayController.extend
  sortProperties: ['startsAt']

  upcoming: (->
    @find (item) -> item.get('startsAt') > new Date()
  ).property('@each.startsAt')

