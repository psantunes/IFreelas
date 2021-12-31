# frozen_string_literal: true

# app/models/campus.rb
class Campus < ApplicationRecord
  has_many :courses
end
