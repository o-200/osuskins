class CreateSkins < ActiveRecord::Migration[7.0]
  def up
    create_table "skins" do |t|
      t.string :name
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps

      t.boolean "standart", default: true
      t.boolean "taiko", default: false
      t.boolean "mania", default: false
      t.boolean "catch", default: false
    end
  end
end
