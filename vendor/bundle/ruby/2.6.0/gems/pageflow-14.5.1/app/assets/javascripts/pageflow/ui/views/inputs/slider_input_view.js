/**
 * A slider for numeric inputs.
 *
 * @see {@link module:pageflow/ui.pageflow.inputView pageflow.inputView} for options
 * @class
 * @memberof module:pageflow/ui
 */
pageflow.SliderInputView = Backbone.Marionette.ItemView.extend({
  mixins: [pageflow.inputView],

  className: 'slider_input',
  template: 'pageflow/ui/templates/inputs/slider_input',

  ui: {
    widget: '.slider',
    value: '.value'
  },

  events: {
    'slidechange': 'save'
  },

  onRender: function() {
    this.ui.widget.slider({
      animate: 'fast',
      min: 'minValue' in this.options ? this.options.minValue : 0,
      max: 'maxValue' in this.options ? this.options.maxValue : 100,
    });

    this.load();
  },

  save: function() {
    var value = this.ui.widget.slider('option', 'value');
    var unit = 'unit' in this.options ? this.options.unit : '%';

    this.ui.value.text(value + unit);

    this.model.set(this.options.propertyName, value);
  },

  load: function() {
    var value;

    if (this.model.has(this.options.propertyName)) {
      value = this.model.get(this.options.propertyName)
    }
    else {
      value = 'defaultValue' in this.options ? this.options.defaultValue : 0
    }

    this.ui.widget.slider('option', 'value', value);
  }
});
