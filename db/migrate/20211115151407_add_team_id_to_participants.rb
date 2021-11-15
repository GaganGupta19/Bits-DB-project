class AddTeamIdToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_reference :participants, :team, null: false, foreign_key: true
  end
end
