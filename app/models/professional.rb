class Professional < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :timeoutable

  belongs_to :course, optional: true
  has_many :experiences

  has_and_belongs_to_many :languages
  has_and_belongs_to_many :regions
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :experiences, allow_destroy: true
  accepts_nested_attributes_for :languages, allow_destroy: true
  accepts_nested_attributes_for :regions, allow_destroy: true
  accepts_nested_attributes_for :skills, allow_destroy: true

  enum semester: { "1º": 1, "2º": 2, "3º": 3, "4º": 4, "5º": 5, "6º": 6 }
  enum type_of_work: { "In company": 0, "Home office": 1, Hìbrido: 2 }
  enum work_shift: { Manhã: 0, Tarde: 1, Noite: 2, Integral: 3, "Finais de semana": 4 }
end
