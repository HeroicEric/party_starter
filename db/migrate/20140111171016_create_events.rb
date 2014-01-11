class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.integer :location_id
      t.string :theme, null: false
      t.datetime :when, null: false, default: Time.now + (60*60*24)
      t.integer :rsvp_min, null: false
      t.integer :rsvp_max
      t.text :description

      t.timestamps
    end
  end
end
