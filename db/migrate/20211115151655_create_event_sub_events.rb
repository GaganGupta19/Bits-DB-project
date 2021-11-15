class CreateEventSubEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :event_sub_events do |t|
      t.references :event
      t.references :sub_event

      t.timestamps
    end
  end
end
