class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
