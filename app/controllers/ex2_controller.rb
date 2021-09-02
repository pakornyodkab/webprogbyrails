class Ex2Controller < ApplicationController
  def loop
    input1 = params[:a].to_s #if user are not give a input1 = " "
    input2 = params[:b].to_s #if user are not give b input2 = " "
    puts input1
    puts input2
    @a_notint = false
    @b_notint = false
    #check that a,b is int or not 
    if (!input1.match?(/\A-?\d+\Z/)) # input1.match?(/\A-?\d+\Z/) this will return true if input1 is a number 
      @a_notint = true
    end

    if (!input2.match?(/\A-?\d+\Z/))
      @b_notint = true
    end
    # if user input a,b is not int or not input a,b when pass fn to_i it will give value to 0
    @a= input1.to_i
    @b = input2.to_i

  end

  def testhaml
  end
end
