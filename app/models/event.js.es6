export default DS.Model.extend({
  location: DS.belongsTo('location'),

  title: DS.attr('string'),
  theme: DS.attr('string'),
  rsvpMin: DS.attr('number'),
  when: DS.attr('string')
});
