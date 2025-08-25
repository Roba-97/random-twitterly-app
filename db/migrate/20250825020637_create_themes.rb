class CreateThemes < ActiveRecord::Migration[8.0]
  def change
    create_table :themes do |t|
      t.string :title

      t.timestamps
    end
    add_index :themes, :title, unique: true
  end
end
