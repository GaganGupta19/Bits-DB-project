class CreatePrizes < ActiveRecord::Migration[6.1]
  def change
    create_table :prizes do |t|
      t.references :event, null: false, foreign_key: true
      t.integer :money

      t.timestamps
    end
  end
end
