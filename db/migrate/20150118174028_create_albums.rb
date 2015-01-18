class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :nome
      t.date :release
      t.text :capa
      t.string :itunes_store
      t.string :play_store

      t.timestamps null: false
    end
  end
end
