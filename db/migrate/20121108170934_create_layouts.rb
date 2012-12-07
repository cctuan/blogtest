class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.text :config
      t.integer :user_id

      t.timestamps
    end
  end
end
