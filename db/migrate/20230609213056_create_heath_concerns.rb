class CreateHeathConcerns < ActiveRecord::Migration[6.1]
  def change
    create_table :heath_concerns do |t|
      t.integer :user_id, null: false
      t.integer :disease_id, null: false
      t.timestamps
    end
  end
end
