class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :price
      t.string :contactname
      t.string :contactemail
      t.string :contactnumber

      t.timestamps
    end
  end
end
