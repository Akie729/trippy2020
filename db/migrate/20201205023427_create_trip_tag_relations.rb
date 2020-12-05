class CreateTripTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_tag_relations do |t|
      t.references :trip, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
