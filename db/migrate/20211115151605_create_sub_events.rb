class CreateSubEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_events do |t|
      t.string :name

      t.timestamps
    end
  end
end
