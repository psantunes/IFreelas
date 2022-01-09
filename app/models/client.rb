# frozen_string_literal: true

# app/models/client.rb
class Client < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :timeoutable

  validates :email, format: { with: /[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]/ }, uniqueness: true
  validates :name, presence: true, format: { with: /[A-Za-z\-àèìòùáéíóúâêîôûãõ\b] / }
  validates :company, :phone, presence: true, unless: proc { |c| c.new_record? }
end
