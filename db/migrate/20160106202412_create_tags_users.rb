class CreateTagsUsers < ActiveRecord::Migration
  def change
    create_table :tags_users do |t|
    	t.references :tag, null: false
    	t.references :user, null: false

      t.timestamps null: false
    end
  end
end
