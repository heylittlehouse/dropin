class CreateEventsTags < ActiveRecord::Migration
  def change
    create_table :events_tags do |t|
    	t.references :event, null: false
    	t.references :tag, null: false

      t.timestamps null: false
    end
  end
end
