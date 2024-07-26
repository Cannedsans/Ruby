nums = [1,2,3,4,5,6,7,8,9,10]

double = nums.collect do |n|
    n*2
end

puts double