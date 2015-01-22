class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :fb_id
      t.string :foto_url
      t.string :sexo

      t.timestamps null: false
    end
  end
end
