class CreateEventms < ActiveRecord::Migration[5.1]
  def change
    create_table :eventms do |t|
      t.string :name, :null=>false, index:true, unique: true, :limit => 45
      t.string :description
      t.string :address
      t.string :phone
      t.datetime :start_time, :null=>false, index: true
      t.datetime :end_time
      t.float :latitude
      t.float :longitude
      t.integer :owner_id

      t.timestamps
    end
  end
end
