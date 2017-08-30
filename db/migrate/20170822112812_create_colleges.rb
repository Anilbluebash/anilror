class CreateColleges < ActiveRecord::Migration[5.1]
  def change
    create_table :colleges do |t|
      t.string :college
      t.string :address
      t.decimal :percentage
      t.string :email
      t.integer :contactnumber

      t.timestamps
    end
  end
end
