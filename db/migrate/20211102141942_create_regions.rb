class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.timestamps
    end

    create_table :professionals_regions, id: false do |t|
      t.belongs_to :professional
      t.belongs_to :region
      t.timestamps
    end
  end
end
