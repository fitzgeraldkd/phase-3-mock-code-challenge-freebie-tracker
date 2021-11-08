class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.belongs_to :dev
      t.belongs_to :company
    end
  end
end
