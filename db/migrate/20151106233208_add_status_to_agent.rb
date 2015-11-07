class AddStatusToAgent < ActiveRecord::Migration
  def change
  	add_column :agents, :avalible, :boolean, default: true
  end
end
