class AddDepartmentIdToDoctor < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :department_id, :integer
  end
end
