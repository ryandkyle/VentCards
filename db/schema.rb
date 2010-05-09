# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100508214022) do

  create_table "attendee_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.text     "type_description"
  end

  create_table "attendees", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "email"
    t.integer  "attendee_type"
    t.binary   "attendee_logo"
  end

  create_table "card_templates", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_organizers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "comments"
  end

  create_table "event_to_sponsors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "sponsor_id"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_name"
    t.text     "description"
    t.binary   "logo"
    t.integer  "num_cards"
    t.string   "default_delivery_option"
    t.integer  "card_template_id"
    t.integer  "payment_id"
  end

  create_table "payments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "info"
    t.boolean  "paid"
  end

  create_table "sponsors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "contact"
    t.binary   "logo"
  end

end
