App.DishView = Em.View.extend
  didInsertElement: ->
    @$().foundation 'section', =>
      @$().find('section:first a').click()
