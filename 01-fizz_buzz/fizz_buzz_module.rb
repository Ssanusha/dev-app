module FizzBuzzModule

# This method is used for finding if a number is Fizz, Buzz, FizzBuzz
# or none of these 
  def FizzBuzzModule.fizzbuzz_num(i)
    
  	 if i%15 == 0
  	   "FizzBuzz"
  	 elsif i%5 == 0
    	 "Buzz"
  	 elsif i%3 == 0
  	   "Fizz"
  	 else
  	   i
  	 end
  
  end

end
