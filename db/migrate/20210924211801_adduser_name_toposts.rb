class AdduserNameToposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_name, :text

  end
end
