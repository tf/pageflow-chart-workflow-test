pageflow.TooltipView = Backbone.Marionette.ItemView.extend({
  template: 'pageflow/ui/templates/tooltip',
  className: 'tooltip',

  ui: {
    label: '.label'
  },

  hide: function() {
    this.visible = false;
    clearTimeout(this.timeout);
    this.$el.removeClass('visible');
  },

  show: function(text, position, options) {
    options = options || {};
    this.visible = true;

    clearTimeout(this.timeout);

    this.timeout = setTimeout(_.bind(function() {
      var offsetTop;
      var offsetLeft;

      this.ui.label.text(text);

      this.$el.toggleClass('align_bottom_right', options.align === 'bottom right');
      this.$el.toggleClass('align_bottom_left', options.align === 'bottom left');

      if (options.align === 'bottom right' ||
          options.align === 'bottom left' ) {

        offsetTop = 10;
        offsetLeft = 0;
      }
      else {
        offsetTop = -17;
        offsetLeft = 10;
      }

      this.$el.css({
        top: (position.top + offsetTop) + 'px',
        left: (position.left + offsetLeft) + 'px'
      });

      this.$el.addClass('visible');
    }, this), 200);
  }
});