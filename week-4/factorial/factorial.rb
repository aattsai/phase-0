def factorial(number)
fact = number

 if number==0
  return 1
 end

  while number > 1
  fact = fact * (number - 1)
  number = number - 1
  end

  return fact
end