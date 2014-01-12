export default DS.Model.extend({
  events: DS.hasMany('event'),

  name: DS.attr('string'),
  streetAddress: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  zipCode: DS.attr('string')
});
