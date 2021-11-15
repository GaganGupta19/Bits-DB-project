class CreateTeamParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :team_participations do |t|
      t.references :Team
      t.references :EventSubEvent
      t.integer :round
      t.float :score
      t.string :position

      t.timestamps
    end
  end
end
