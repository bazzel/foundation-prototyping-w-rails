App.DishView = Em.View.extend
  didInsertElement: ->
    Ember.run.next @, ->
      @$().foundation =>
        @$().find('section:first').addClass('active')
