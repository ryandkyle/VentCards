class AddEventToSponsorFields < ActiveRecord::Migration
  def self.up
    add_column :event_to_sponsors, :event_id, :integer
    add_column :event_to_sponsors, :sponsor_id, :integer  
  end

  def self.down
    drop_column :event_to_sponsors, :event_id, :integer
    drop_column :event_to_sponsors, :sponsor_id, :integer  
  end
end
