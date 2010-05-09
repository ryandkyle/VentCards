class AddSponsorFields < ActiveRecord::Migration
  def self.up
    add_column :sponsors, :name, :string
    add_column :sponsors, :contact, :string
    add_column :sponsors, :logo, :binary
  end

  def self.down
    drop_column :sponsors, :name, :string
    drop_column :sponsors, :contact, :string
    drop_column :sponsors, :logo, :binary
  end
end
