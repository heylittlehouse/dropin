class CreateEventsUsers < ActiveRecord::Migration
  def change
    create_table :events_users do |t|
    	t.references :event, null: false
    	t.references :user, null: false

      t.timestamps null: false
    end
  end
end
