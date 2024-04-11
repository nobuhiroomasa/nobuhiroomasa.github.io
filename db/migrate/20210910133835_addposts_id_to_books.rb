class AddpostsIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :posts_id, :integer
  end
end
