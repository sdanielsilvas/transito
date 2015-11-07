class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :surname
      t.string :identification
      t.string :longitude
      t.string :latitude

      t.timestamps null: false
    end
  end
end
