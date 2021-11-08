class AddValueToFreebies < ActiveRecord::Migration[6.1]
  def change
    add_column :freebies, :value, :integer
  end
end
