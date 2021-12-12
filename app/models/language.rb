class Language < ApplicationRecord
  has_and_belongs_to_many :professionals
  enum level: { Básico: 0, Intermediário: 1, Fluente: 2 }
end
