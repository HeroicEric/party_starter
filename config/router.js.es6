var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('events', function() {
    this.route('new');
    this.route('show', { path: ':event_id' });
  });
});

export default Router;
