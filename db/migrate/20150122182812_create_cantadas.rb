class CreateCantadas < ActiveRecord::Migration
  def change
    create_table :cantadas do |t|
      t.integer :from_user
      t.integer :to_user
      t.text :content

      t.timestamps null: false
    end
  end
end
