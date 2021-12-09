class Professional < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :timeoutable

  belongs_to :course, optional: true
  has_many :experiences
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :regions

  enum type_of_work: { "In company": 0, "Home office": 1 }
  enum work_shift: { Manhã: 0, Tarde: 1, Noite: 2, "Finais de semana": 3 }
end
