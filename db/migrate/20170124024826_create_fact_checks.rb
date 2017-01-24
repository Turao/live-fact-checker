class CreateFactChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :fact_checks do |t|
      t.integer :veracity
      t.text :comment
      t.boolean :verifiedByMod

      t.integer :checker_id
      t.integer :statement_id

      t.timestamps
    end
  end
end
