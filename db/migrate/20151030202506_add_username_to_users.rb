class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method is translated to SQL and modified to the database
  	add_column :users, :username, :string # add a new column to table `users` called `username` and of type `string`
  	add_index :users, :username, unique: true # ensures all the usernames are unique and no duplicates are made
  	
  end
end
