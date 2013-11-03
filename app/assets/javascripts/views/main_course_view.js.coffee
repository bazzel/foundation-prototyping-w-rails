App.MainCourseView = Em.View.extend
  didInsertElement: ->
    @$().foundation =>
      @$().find('section:first').addClass('active')
