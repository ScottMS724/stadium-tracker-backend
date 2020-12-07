class CreateStadia < ActiveRecord::Migration[6.0]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
