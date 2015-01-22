class CreateCantadaTemplates < ActiveRecord::Migration
  def change
    create_table :cantada_templates do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
