class AddAttendeeFields < ActiveRecord::Migration
  def self.up
    add_column :attendees, :first_name, :string
    add_column :attendees, :last_name, :string
    add_column :attendees, :title, :string
    add_column :attendees, :phone, :string
    add_column :attendees, :email, :string
    add_column :attendees, :attendee_type, :integer
    add_column :attendees, :attendee_logo, :binary
  end

  def self.down
    drop_column :attendees, :first_name, :string
    drop_column :attendees, :last_name, :string
    drop_column :attendees, :title, :string
    drop_column :attendees, :phone, :string
    drop_column :attendees, :email, :string
    drop_column :attendees, :attendee_type, :integer
    drop_column :attendees, :attendee_logo, :binary
  end
end
