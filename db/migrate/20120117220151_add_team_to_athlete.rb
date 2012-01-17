class AddTeamToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :team, :string
  end
end
