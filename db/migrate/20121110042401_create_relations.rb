class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :relatied_id
      t.integer :relating_id
      t.string :type

      t.timestamps
    end
  end
end
