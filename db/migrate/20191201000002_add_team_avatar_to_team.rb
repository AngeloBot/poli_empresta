class AddTeamAvatarToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :team_avatar, :string
  end
end
