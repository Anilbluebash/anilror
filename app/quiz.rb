require "byebug"

sum = 0

def quiz(qus,ans)
 puts qus

 puts "ur ans is"
 a=gets.chomp

  if (a==qus)
  	puts "gd ans"
  	return 20
  else
  	puts "wrong ans"

  	puts "write ans is, #{qus}"

  	return 0
  end
end

 qus =[["what is my name","anil"],["pm of india is","modi"],["owner of my rum is","garg"]]



 3.times do |xx|
sum = sum +   quiz(qus[xx][0],qus[xx][1])
 	 
 	end

 	#qus.each do |xx|
 	 #sum = sum + quiz(xx[0],xx[1])
 	#end
 
 puts "ur sum is #{sum}"

  

