# frozen_string_literal: true

# app/models/course.rb
class Course < ApplicationRecord
  belongs_to :campus

  def name_with_campus
    "#{name} - #{campus.name}"
  end
end
