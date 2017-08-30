class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :Name
      t.integer :age
      t.decimal :marks
   
      t.timestamps
    end
  end
end
