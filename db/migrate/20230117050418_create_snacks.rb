class CreateSnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :snacks do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.references :machine, foreign_key: true
    end
  end
end
