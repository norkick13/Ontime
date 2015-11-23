class AddColumnStaffId < ActiveRecord::Migration
  def change
  	add_column :comments, :staff_id, :integer
  end
end
