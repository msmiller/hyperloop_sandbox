class CreateBlivots < ActiveRecord::Migration[5.0]
  def change
    create_table :blivots do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end
end
