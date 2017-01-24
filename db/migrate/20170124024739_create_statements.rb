class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.text :content
      t.date :date

      t.integer :politician_id
      t.integer :event_id
      
      t.timestamps
    end
  end
end
