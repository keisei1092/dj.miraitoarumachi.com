class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.integer :event_id
      t.integer :twitter_status_id

      t.timestamps null: false
    end
  end
end
