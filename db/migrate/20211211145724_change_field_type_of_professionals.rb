class ChangeFieldTypeOfProfessionals < ActiveRecord::Migration[6.1]
  def up
    change_column :professionals, :birth_date, 'date USING CAST(birth_date AS date)'
  end
  def down
    change_column :professionals, :birth_date, :string
  end
end
