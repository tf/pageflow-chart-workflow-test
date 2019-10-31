/** @api private */
pageflow.DropDownButtonItemView = Backbone.Marionette.ItemView.extend({
  template: 'pageflow/editor/templates/drop_down_button_item',
  tagName: 'li',
  className: 'drop_down_button_item',

  ui: {
    link: '> a',
    label: '> .label'
  },

  events: {
    'click > a': function() {
      if (!this.model.get('disabled')) {
        this.model.selected();
      }

      return false;
    }
  },

  modelEvents: {
    change: 'update'
  },

  onRender: function() {
    this.update();

    if (this.model.get('items')) {
      this.appendSubview(new pageflow.DropDownButtonItemListView({
        items: this.model.get('items')
      }));
    }
  },

  update: function() {
    this.ui.link.text(this.model.get('label'));
    this.ui.label.text(this.model.get('label'));

    this.$el.toggleClass('is_selectable', !!this.model.selected);
    this.$el.toggleClass('is_disabled', !!this.model.get('disabled'));
    this.$el.toggleClass('is_checked', !!this.model.get('checked'));

    this.$el.data('name', this.model.get('name'));
  }
});