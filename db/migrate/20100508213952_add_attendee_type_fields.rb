class AddAttendeeTypeFields < ActiveRecord::Migration
  def self.up
    add_column :attendee_types, :type, :string
    add_column :attendee_types, :type_description, :text  
  end

  def self.down
    drop_column :attendee_types, :type, :string
    drop_column :attendee_types, :type_description, :text
  end
end
