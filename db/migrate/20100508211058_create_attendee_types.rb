class CreateAttendeeTypes < ActiveRecord::Migration
  def self.up
    create_table :attendee_types do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :attendee_types
  end
end
