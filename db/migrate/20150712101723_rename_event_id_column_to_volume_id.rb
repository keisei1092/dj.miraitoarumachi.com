class RenameEventIdColumnToVolumeId < ActiveRecord::Migration
  def change
    rename_column :setlists, :event_id, :volume_id
  end
end
