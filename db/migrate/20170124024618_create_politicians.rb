class CreatePoliticians < ActiveRecord::Migration[5.0]
  def change
    create_table :politicians do |t|
      t.integer :person_id
      t.integer :party_id
      
      t.timestamps
    end
  end
end
