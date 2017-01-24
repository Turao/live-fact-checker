class CreateModerators < ActiveRecord::Migration[5.0]
  def change
    create_table :moderators do |t|
      t.integer :person_id
      t.integer :event_id

			t.timestamps
    end
  end
end
