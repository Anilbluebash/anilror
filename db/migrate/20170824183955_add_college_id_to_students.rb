class AddCollegeIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :college, foreign_key: true
  end
end
