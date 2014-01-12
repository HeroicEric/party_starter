var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('events', function() {
    this.route('new');
    this.route('show', {path: ':event_id'});
    this.route('edit', {path: ':event_id/edit'});
  });
  this.resource('events');
  this.resource('events', { path: '/' }, function() {
    this.route('new');
  });
});

export default Router;
