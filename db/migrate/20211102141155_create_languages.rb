class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.timestamps
    end

    create_table :languages_professionals, id: false do |t|
      t.belongs_to :professional
      t.belongs_to :language
      t.integer :level
      t.timestamps
    end
  end
end
