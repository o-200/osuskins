class CreateSkins < ActiveRecord::Migration[7.0]
  def change
    create_table :skins do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
