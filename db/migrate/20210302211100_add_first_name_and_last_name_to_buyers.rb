class AddFirstNameAndLastNameToBuyers < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers, :first_name, :string
    add_column :buyers, :last_name, :string
  end
end
