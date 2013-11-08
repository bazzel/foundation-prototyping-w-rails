App.DishView = Em.View.extend
  didInsertElement: ->
    Ember.run.next @, ->
      @$().foundation 'section', =>
        @$().find('section:first').addClass('active')
