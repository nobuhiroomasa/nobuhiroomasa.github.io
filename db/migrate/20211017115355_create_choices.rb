class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :user_id
      t.string :choice_id

      t.timestamps
    end
  end
end
