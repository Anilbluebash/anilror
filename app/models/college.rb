class College < ApplicationRecord

	validates :college, length: { minimum: 3 }, presence: true 
        
	validates :address, length: { minimum: 4 },  presence: true
        
	validates :percentage,  numericality: true, presence: true

	validates :email, length: { minimum: 5 }, presence: true
    
    validates :contactnumber,  presence: true, numericality: true

    has_many :students
    
end
