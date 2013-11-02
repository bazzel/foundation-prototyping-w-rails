Em.Handlebars.helper 'format-date', (date, format) ->
  moment(date).format(format)
, 'date'
