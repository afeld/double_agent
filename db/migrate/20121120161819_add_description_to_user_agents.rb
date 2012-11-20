class AddDescriptionToUserAgents < ActiveRecord::Migration
  def change
    add_column :user_agents, :description, :text
  end
end
