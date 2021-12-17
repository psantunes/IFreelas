class Professional < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :timeoutable

  belongs_to :course, optional: true
  has_many :experiences

  has_and_belongs_to_many :languages
  has_and_belongs_to_many :regions
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true

  has_one_attached :avatar

  validates :email, format: { with: /[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]/}, uniqueness: true
  validates :name, presence: true, format: { with: /[A-Za-z]*/ }
  validates :birth_date, :course, :semester, :type_of_work, :work_shift,
            presence: true, unless: proc { |c| c.new_record? }

  enum semester: { "1º": 1, "2º": 2, "3º": 3, "4º": 4, "5º": 5, "6º": 6 }
  enum type_of_work: { "In company": 0, "Home office": 1, Híbrido: 2 }
  enum work_shift: { Manhã: 0, Tarde: 1, Noite: 2, Integral: 3, "Finais de semana": 4 }
end
