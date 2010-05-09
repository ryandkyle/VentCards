class CreateCardTemplates < ActiveRecord::Migration
  def self.up
    create_table :card_templates do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :card_templates
  end
end
