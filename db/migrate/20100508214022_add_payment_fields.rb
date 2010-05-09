class AddPaymentFields < ActiveRecord::Migration
  def self.up
    add_column :payments, :info, :string
    add_column :payments, :paid, :boolean
  end

  def self.down
    drop_column :payments, :info, :string
    drop_column :payments, :paid, :boolean
  end
end
