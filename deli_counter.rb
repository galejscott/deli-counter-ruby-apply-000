katz_deli = []

# show line with numbers. if nobody, say so
def line(array)
  arr = []
  if array.length == 0
    puts "The line is currently empty."
  else
    array.each.with_index(1) do |name, index|
      arr.push("#{index}. #{name}")
    end
    puts "The line is currently: #{arr.join(" ,")}"
  end
end

line(katz_deli)

# add to array and number (+1) 
def take_a_number(array, number)
  number += 1
  array.push(number)
  puts "Welcome, you are number #{number}."
  return number
end

num = 0
num = take_a_number(katz_deli, num)
num = take_a_number(katz_deli, num)
num = take_a_number(katz_deli, num)

# 1,2,3
# 1 gets served
# 2,3
# 2,3,4
# 2,3,and 4 get served
# empty
# 5

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")
line(katz_deli)

# current servee and remove from array. if nobody, say so
def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array[0]}."
    array.shift
  end
end

now_serving(katz_deli)
line(katz_deli)
