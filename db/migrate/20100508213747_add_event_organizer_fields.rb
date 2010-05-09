class AddEventOrganizerFields < ActiveRecord::Migration
  def self.up
    add_column :event_organizers, :first_name, :string
    add_column :event_organizers, :last_name, :string
    add_column :event_organizers, :email_address, :string
    add_column :event_organizers, :phone_number, :string
    add_column :event_organizers, :comments, :string
  end

  def self.down
    drop_column :event_organizers, :first_name, :string
    drop_column :event_organizers, :last_name, :string
    drop_column :event_organizers, :email_address, :string
    drop_column :event_organizers, :phone_number, :string
    drop_column :event_organizers, :comments, :string
  end
end
