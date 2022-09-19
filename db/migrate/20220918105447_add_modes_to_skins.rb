class AddModesToSkins < ActiveRecord::Migration[7.0]
  def up
    create_table "skins", force: :cascade do |t|
      t.boolean "standart", default: true
      t.boolean "taiko", default: false
      t.boolean "mania", default: false
      t.boolean "catch", default: false
    end
  end
end
