class ChangeDatatypeTwitterStatusIdOfSetlists < ActiveRecord::Migration
  def change
    change_column :setlists, :twitter_status_id, :text
  end
end
