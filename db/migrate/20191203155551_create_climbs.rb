class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.integer :internal_identifier
      t.string :name
      t.string :rating
      t.string :imgSmallMed
      t.string :longitude
      t.string :latitude
      t.string :location, array: true
      t.timestamps
    end
  end
end
