# frozen_string_literal: true

class Region < ApplicationRecord
  has_and_belongs_to_many :professionals
end
