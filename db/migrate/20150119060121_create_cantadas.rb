class CreateCantadas < ActiveRecord::Migration
  def change
    create_table :cantadas do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
