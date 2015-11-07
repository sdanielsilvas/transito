class AddPendingToPetition < ActiveRecord::Migration
  def change
  	add_column :petitions, :status, :string, default:"pending"
  end
end
