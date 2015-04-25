class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :emailid
      t.string :password
      t.string :phoneno

      t.timestamps
    end
  end
end
