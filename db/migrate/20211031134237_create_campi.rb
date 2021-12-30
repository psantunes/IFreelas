# frozen_string_literal: true

# Create table Campi
class CreateCampi < ActiveRecord::Migration[6.1]
  def change
    create_table :campi do |t|
      t.string :name
      t.timestamps
    end
  end
end
