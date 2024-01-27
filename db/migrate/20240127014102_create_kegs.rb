class CreateKegs < ActiveRecord::Migration[7.1]
  def change
    create_table :kegs do |t|
      t.integer :capacity_ml, default: 5000
      t.integer :consumed_ml, default: 0
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
