class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.boolean :is_manager
      t.references :farm, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :farms
  end
end
