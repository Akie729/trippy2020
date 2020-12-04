class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.text :title
      t.string :text
      
  
      t.timestamps
    end
  end
end
