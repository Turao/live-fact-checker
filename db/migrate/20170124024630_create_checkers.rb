class CreateCheckers < ActiveRecord::Migration[5.0]
  def change
    create_table :checkers do |t|
      t.integer :person_id
      
      t.timestamps
    end
  end
end
