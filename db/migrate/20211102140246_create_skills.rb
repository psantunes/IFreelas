# frozen_string_literal: true

# Created table skills
class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.timestamps
    end

    create_table :professionals_skills, id: false do |t|
      t.belongs_to :professional
      t.belongs_to :skill
      t.timestamps
    end
  end
end
