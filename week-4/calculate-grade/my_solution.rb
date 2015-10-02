# Calculate a Grade

# I worked on this challenge [by myself, with: Jamar Gibbs].


# Your Solution Below

def get_grade (score)
  if score > 89
    return "A"
  elsif score > 79 && score < 90
    return "B"
  elsif score > 69 && score < 80
    return "C"
  elsif score > 59 && score < 70
    return "D"
  else
    return "F"
  end
end