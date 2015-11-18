class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :fname
      t.string :lname
      t.string :email

      t.timestamps null: false
    end
  end
end
