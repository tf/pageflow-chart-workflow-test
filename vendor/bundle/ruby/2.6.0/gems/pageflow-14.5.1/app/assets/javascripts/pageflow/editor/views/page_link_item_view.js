pageflow.PageLinkItemView = Backbone.Marionette.ItemView.extend({
  template: 'pageflow/editor/templates/page_link_item',

  tagName: 'li',
  className: 'page_link',

  ui: {
    thumbnail: '.page_thumbnail',
    title: '.title',
    label: '.label',
    editButton: '.edit',
    removeButton: '.remove'
  },

  events: {
    'click .edit': function() {
      pageflow.editor.navigate(this.model.editPath(), {trigger: true});
      return false;
    },

    'mouseenter': function() {
      this.model.highlight(true);
    },

    'mouseleave': function() {
      this.model.resetHighlight(false);
    },

    'click .remove': function() {
      if (confirm(I18n.t('pageflow.internal_links.editor.views.edit_page_link_view.confirm_destroy'))) {
        this.model.remove();
      }
    }
  },

  onRender: function() {
    var page = this.model.targetPage();

    if (page) {
      this.subview(new pageflow.PageThumbnailView({
        el: this.ui.thumbnail,
        model: page
      }));

      this.$el.addClass(page.get('template'));
      this.ui.title.text(page.title() || I18n.t('pageflow.editor.views.page_link_item_view.unnamed'));
    }
    else {
      this.ui.title.text(I18n.t('pageflow.editor.views.page_link_item_view.no_page'));
    }

    this.ui.label.text(this.model.label());
    this.ui.label.toggle(!!this.model.label());
    this.ui.editButton.toggle(!!this.model.editPath());

    this.$el.toggleClass('dangling', !page);
  },
});