class AddAddressToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :address, :text
  end
end
