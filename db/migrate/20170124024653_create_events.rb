class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      
      t.integer :organization_id

      t.timestamps
    end
  end
end
