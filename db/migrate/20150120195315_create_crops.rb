class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :type
      t.date :planted_on
      t.date :harvested_on
      t.integer :yield
      t.references :farm, index: true

      t.timestamps null: false
    end
    add_foreign_key :crops, :farms
  end
end
