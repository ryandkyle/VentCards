class AddEventFields < ActiveRecord::Migration
  def self.up
    #add_column :events, :event_name, :string
    #add_column :events, :description, :text
    #add_column :events, :logo, :binary
    #add_column :events, :num_cards, :integer
    #add_column :events, :default_delivery_option, :string
    add_column :events, :card_template_id, :integer
    add_column :events, :payment_id, :integer     
  end

  def self.down
    drop_column :events, :event_name
    drop_column :events, :description
    drop_column :events, :logo
    drop_column :events, :num_cards
    drop_column :events, :default_delivery_option
    drop_column :events, :card_template_id
    drop_column :events, :payment_id
  end
end
