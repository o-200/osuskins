class AddModesToSkins < ActiveRecord::Migration[7.0]
  def change
    create_table "skins", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.string "photo"

      t.boolean :standart, default: false
      t.boolean :taiko, default: false
      t.boolean :mania, default: false
      t.boolean :catch, default: false

      t.integer "user_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_skins_on_user_id"
    end
  end
end
