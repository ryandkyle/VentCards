class CreateEventToSponsors < ActiveRecord::Migration
  def self.up
    create_table :event_to_sponsors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :event_to_sponsors
  end
end
