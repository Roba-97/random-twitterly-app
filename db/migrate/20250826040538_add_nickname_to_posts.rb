class AddNicknameToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :nickname, :string, null: true
  end
end
