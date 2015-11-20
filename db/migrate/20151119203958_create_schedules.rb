class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.string :admin_code
    	t.string :admin_name
    	t.string :admin_email
      t.string :title
    	t.text :body
    	t.string :staff_fname
    	t.string :staff_lname
    	t.string :staff_email
    	t.text :body



      t.timestamps null: false
    end
  end
end
