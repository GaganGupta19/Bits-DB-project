class AddParticipationYearToTeamParticipations < ActiveRecord::Migration[6.1]
  def change
    add_column :team_participations, :year, :integer
  end
end
