class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.references :user, null: false
    	t.float  :latitude, null: false
    	t.float  :longitude, null: false
    	t.datetime :start_time, null: false
    	t.datetime :end_time, null: false
    	t.text   :description
    	t.text	 :bring_items
    	t.integer  :max_attendance
    	t.boolean  :must_rsvp
    	t.boolean  :public, default: true

      t.timestamps null: false
    end
  end
end
