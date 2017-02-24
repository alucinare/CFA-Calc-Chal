=begin
Your calculator should:

1. ask the user for two nubers
2. ask the user whether they want to add, subtract or multiply
3. return the result

Bonus
      4.   If the answer is 42, tell the user the meaning of life
=end
#all the operations these could be put into one method
#cheeky answer if the result is 42
def num42
  puts "What is the answer to life, the universe, and everything?"
end

#the addition method
def add (num1, num2)
  answer = num1 + num2
  if answer == 42
    num42
  else
    return puts "The answer is: #{answer}"
  end
end

#the substraction method
def subtract (num1, num2)
  answer = num1 - num2
  if answer == 42
    num42
  else
    return puts "The answer is: #{answer}"
  end
end

#the multiplication method
def multiply (num1, num2)
  answer = num1 * num2
  if answer == 42
    num42
  else
    return puts "The answer is: #{answer}" #the display
  end
end

#variable to stop the loop from running
stop = false

#loop that runs the main program
while stop != true
  #user interfact giving context to the program
  puts "Please enter 2 numbers, as I'm a calculator, and I'm hungry. Feed me!"

  #asks the user for 2 numbers
  puts "First number:"
  fir_num = gets.chomp.to_i
  puts "Second number:"
  sec_num = gets.chomp.to_i

  #shows the numbers that was entered by the user
  puts "Your two numbers are #{fir_num} and #{sec_num}" #note: if we want to use the interpolation
  #we must use the double quotes

  #asks the user for the operations
  puts "Would you like to use add (A), subtract (S), multiply (M), or exit(X)?"
  operation = gets.chomp

  #the decision making branch that activates the operations methods depending
  #on what was choosen
  if operation == "A"
    add(fir_num, sec_num)
  elsif operation == "S"
    subtract(fir_num, sec_num)
  elsif operation == "M"
    multiply(fir_num, sec_num)
  elsif operation == "X"
    stop = true
  else
    #error message if the user doesn't choose the correct operation
    #this could be put in earlier in the program so that if the user
    #doesn't input a number they will be shown an error message
    puts "Invalid input, please try again"
  end
end
