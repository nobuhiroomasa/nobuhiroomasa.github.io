class AddImageToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts,:post2,:string
  end
end
