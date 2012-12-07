class AddProfileimgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profileimg, :string
  end
end
