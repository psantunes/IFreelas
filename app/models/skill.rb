# frozen_string_literal: true

# app/models/skill.rb
class Skill < ApplicationRecord
  has_and_belongs_to_many :professionals
end
