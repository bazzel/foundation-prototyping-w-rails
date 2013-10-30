App.DinnerItemController = Em.ObjectController.extend
  formattedStartDate: (->
    moment(@get('startsAt')).format('ddd, ll')
  ).property('startsAt')

  formattedStartTime: (->
    moment(@get('startsAt')).format('h:mm a')
  ).property('startsAt')
