App.MapCanvasComponent = Em.Component.extend
  classNames: ['map-canvas']
  didInsertElement: ->
    #https://developers.google.com/maps/documentation/javascript/examples/marker-simple
    myLatlng = new google.maps.LatLng(@get('dinner.lat'), @get('dinner.lng'))
    mapOptions =
      zoom: 17
      center: myLatlng
      mapTypeId: google.maps.MapTypeId.ROADMAP

    map = new google.maps.Map(@$()[0], mapOptions)
    marker = new google.maps.Marker(
      position: myLatlng
      map: map
      title: @get('dinner.venue')
    )
