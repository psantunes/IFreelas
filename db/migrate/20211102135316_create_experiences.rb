# frozen_string_literal: true

# Create table experiences
class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.belongs_to :professional
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
