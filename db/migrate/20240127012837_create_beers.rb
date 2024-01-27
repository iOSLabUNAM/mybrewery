class CreateBeers < ActiveRecord::Migration[7.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :kind, default: "ale"
      t.float :abu, default: 0
      t.integer :ibu, default: 0

      t.timestamps
    end
  end
end
