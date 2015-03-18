class ChangeUserFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :gifs, :user, :integer
   
  end
end
