# Write a method that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a new number that is not yet in the array. The method should return a new array with the new number inserted in the proper place. Do not use the “sort” method!

# def sort(arr, number)
#   sorted = []
#   index = 0
#   arr.length.times do
#     if arr[index] > number
#       sorted << number
#     end

#     sorted << arr[index]
#     index += 1
#   end

#   return sorted
# end

# p sort([1,2,3,5,8,10], 4)

def where (arr, num)
  mid = arr.length / 2
  if arr[mid] > num
    compare = "lower"
  elsif arr[mid] < num
    compare = "higher" 
  end

  return compare
end

p where([1,3,5,7,9,11,13,15],7)