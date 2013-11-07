Em.Handlebars.helper 'formatDate', (date, format) ->
  moment(date).format(format)
, 'date'
