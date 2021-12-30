# frozen_string_literal: true

# Add several fields to Professional
class AddFieldsToProfessionals < ActiveRecord::Migration[6.1]
  def change
    add_column :professionals, :description, :text
    add_column :professionals, :avatar, :string
    add_column :professionals, :mobile, :string
    add_column :professionals, :whatsapp, :boolean
    add_column :professionals, :linkedin, :string
    add_column :professionals, :github, :string
    add_column :professionals, :website, :string
    add_column :professionals, :birth_date, :date
    add_column :professionals, :work_shift, :integer
    add_column :professionals, :type_of_work, :integer
    add_reference :professionals, :course, foreign_key: true
    add_column :professionals, :semester, :integer
  end
end
