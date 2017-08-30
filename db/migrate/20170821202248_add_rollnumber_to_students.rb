class AddRollnumberToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :rollnumber, :integer
  end
end
