class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :year
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
