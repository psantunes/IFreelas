class Course < ApplicationRecord
  belongs_to :campus

  def name_with_campus
    "#{name} - #{campus.name}"
  end
end
