class CreateCropsUsers < ActiveRecord::Migration
  def change
    create_table :crops_users do |t|
      t.references :user, index: true
      t.references :crop, index: true

      t.timestamps null: false
    end
    add_foreign_key :crops_users, :users
    add_foreign_key :crops_users, :crops
  end
end
