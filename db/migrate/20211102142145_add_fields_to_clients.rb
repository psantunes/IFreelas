# Add fields company and phone
class AddFieldsToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :company, :string
    add_column :clients, :phone, :string
  end
end
