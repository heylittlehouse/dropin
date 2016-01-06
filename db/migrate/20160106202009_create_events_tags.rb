class CreateEventsTags < ActiveRecord::Migration
  def change
    create_table :events_tags do |t|

      t.timestamps null: false
    end
  end
end
