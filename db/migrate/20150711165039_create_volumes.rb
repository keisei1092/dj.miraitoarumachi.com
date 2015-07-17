class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.integer :event_id
      t.integer :number
      t.datetime :open

      t.timestamps null: false
    end
  end
end
