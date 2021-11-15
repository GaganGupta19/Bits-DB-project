class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :phone
      t.string :email
      t.string :name
      t.string :college
      t.string :year
      t.string :course

      t.timestamps
    end
  end
end
