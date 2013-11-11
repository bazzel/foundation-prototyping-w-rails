App.CourseSectionComponent = Em.Component.extend
  didInsertElement: ->
    @$().foundation 'section', =>
      @$().find('section:first a').click()

