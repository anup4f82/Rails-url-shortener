class Urls < ActiveRecord::Migration

  def change
    create_table :urls do |t|
  	  t.string :original
  	  t.string :shorturl
  	  t.integer :counter
   end
  end
end
