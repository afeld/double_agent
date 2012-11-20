class CreateUserAgents < ActiveRecord::Migration
  def change
    create_table :user_agents do |t|
      t.string :original
      t.integer :visits
      t.datetime :last_seen_at

      t.timestamps
    end
  end
end
