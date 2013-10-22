class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.string :type
      t.text :image
      t.string :dayrate
      t.string :weekrate
      t.boolean :availability

      t.timestamps
    end
  end
end
