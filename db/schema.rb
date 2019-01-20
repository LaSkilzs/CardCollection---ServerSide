

ActiveRecord::Schema.define(version: 2019_01_19_204544) do

  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "price"
    t.boolean "favorite"
    t.text "summary"
    t.integer "horsepower"
    t.integer "max_speed"
    t.float "acceleration_secs"
    t.string "drive"
    t.string "body"
    t.string "image1"
    t.string "image2"
    t.bigint "make_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["make_id"], name: "index_cars_on_make_id"
  end

  create_table "favorite_lists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_favorite_lists_on_car_id"
    t.index ["user_id"], name: "index_favorite_lists_on_user_id"
  end

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "usersname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "makes"
  add_foreign_key "favorite_lists", "cars"
  add_foreign_key "favorite_lists", "users"
end
