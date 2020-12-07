class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.date :date
      t.text :description
      t.integer :stadium_id

      t.timestamps
    end
  end
end
