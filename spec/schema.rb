
ActiveRecord::Schema.define do
  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualities", :force => true do |t|
    t.string   "name"
  end
end
