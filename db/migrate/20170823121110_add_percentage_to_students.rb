class AddPercentageToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :percentage, :decimal
  end
end
