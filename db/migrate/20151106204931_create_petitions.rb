class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.string :longitude
      t.string :latitude
      t.string :agent_id

      t.timestamps null: false
    end
  end
end
