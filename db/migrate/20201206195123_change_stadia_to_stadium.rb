class ChangeStadiaToStadium < ActiveRecord::Migration[6.0]

  def change
    rename_table :stadia, :stadium 
  end

end
