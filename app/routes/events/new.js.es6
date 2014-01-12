export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('event');
  },

  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('location', this.store.createRecord('location'));
  },

  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },

  actions: {
    save: function() {
      var event = this.get('controller.model');
      var location = this.get('controller.location');
      event.set('location', location);

      var _this = this;

      location.save().then(function() {
        event.save().then(function() {
          _this.transitionTo('events.index');
        });
      });
    },
    cancel: function() {
      this.transitionTo('events.index');
    }
  }
});
