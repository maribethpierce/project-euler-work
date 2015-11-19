require 'pry'

@numbers = []
def fibonacci(max_num)
  x = 1
  y = 2
  @numbers << x
  @numbers << y
  until y > max_num
    z = x += y
    @numbers << z
    x = @numbers[-2]
    y = @numbers[-1]
  end
  @numbers.each do |number|
    if number > max_num
      @numbers.delete(number)
    end
  end
  @numbers
end

@even_numbers =[]
def even(digits) #an array of numbers
  digits.each do |digit|
    if digit % 2 == 0
      @even_numbers << digit
    end
  end
@even_numbers
end
digits = fibonacci(4000000)
sum = even(digits).reduce :+
print sum
