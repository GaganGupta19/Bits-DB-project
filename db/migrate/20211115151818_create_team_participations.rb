class CreateTeamParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :team_participations do |t|
      t.references :team
      t.references :event_sub_event
      t.integer :round
      t.float :score
      t.string :position

      t.timestamps
    end
  end
end
