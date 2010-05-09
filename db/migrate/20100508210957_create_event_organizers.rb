class CreateEventOrganizers < ActiveRecord::Migration
  def self.up
    create_table :event_organizers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :event_organizers
  end
end
