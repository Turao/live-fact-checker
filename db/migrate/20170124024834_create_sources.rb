class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :url

      t.integer :fact_check_id
      
      t.timestamps
    end
  end
end
