class Student < ApplicationRecord

	# validates :Name, length: { minimum: 3 }, presence: true 
	# validates :age, length: { minimum: 1 }, numericality: true, presence: true
	# validates :marks, length: { minimum: 1 }, numericality: true, presence: true
 #  validates :rollnumber, length: { minimum: 2 }, numericality: true, presence: true

  before_save :show_percentage_to_user

  def show_percentage_to_user
    self.percentage = marks*100/200
  end 

   belongs_to :college
end

