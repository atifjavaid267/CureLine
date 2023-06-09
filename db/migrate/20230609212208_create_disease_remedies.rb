class CreateDiseaseRemedies < ActiveRecord::Migration[6.1]
  def change
    create_table :disease_remedies do |t|
      t.integer :disease_id, null: false
      t.integer :remedy_id, null: false
      t.timestamps
    end
  end
end
