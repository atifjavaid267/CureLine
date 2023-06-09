class CreateRemedies < ActiveRecord::Migration[6.1]
  def change
    create_table :remedies do |t|
      t.integer :disease_id, null: false
      t.string :name
      t.integer :category
      t.timestamps
    end
  end
end
