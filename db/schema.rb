ActiveRecord::Schema.define(version: 20150810190746) do

  create_table "posts", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "current_city"
    t.string   "join_date"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
