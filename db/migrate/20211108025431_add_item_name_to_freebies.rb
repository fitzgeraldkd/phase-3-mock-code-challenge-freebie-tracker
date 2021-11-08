class AddItemNameToFreebies < ActiveRecord::Migration[6.1]
  def change
    add_column :freebies, :item_name, :string
  end
end
