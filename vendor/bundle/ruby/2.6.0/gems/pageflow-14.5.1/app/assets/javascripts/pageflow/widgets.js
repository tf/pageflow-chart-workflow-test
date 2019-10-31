pageflow.widgets = (function() {
  return {
    isPresent: function(name) {
      return !!$('div.' + className(name)).length;
    },

    areLoaded: function() {
      return !!$('div.widgets_present').length;
    },

    use: function(options, callback) {
      var original = options.insteadOf;

      var originalClassName = className(original);
      var replacementClassNames =
        className(options.name) + ' ' +
        className(original, 'replaced');

      if (this.isPresent(original)) {
        replace(originalClassName, replacementClassNames);

        callback(function() {
          replace(replacementClassNames, originalClassName);
        });
      }
      else {
        callback(function() {});
      }
    }
  };

  function replace(original, replacement) {
    $('div.widgets_present')
      .removeClass(original)
      .addClass(replacement);

    pageflow.events.trigger('widgets:update');
    pageflow.slides.triggerResizeHooks();
  }

  function className(name, state) {
    return 'widget_' + name + '_' + (state || 'present');
  }
}());