class AddDescriptionToGears < ActiveRecord::Migration
  def change
    add_column :gears, :Description, :text
  end
end
