class UpdateUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  	  remove_column :users,:password,:string
  	  add_column :users,:password_hash,:string
     end
  end
end
