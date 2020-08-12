# Karl has an array of integers. He wants to reduce the array until all remaining elements are equal. 
# Determine the minimum number of elements to delete to reach his goal.

# Solution

def equalizeArray(arr)
    len = arr.length
    ar = []
    for i in (len).times
      ar << arr.count(arr[i])
    end
    if len - arr.count(arr[ar.index(ar.max)]) == 0 && !arr.all? { |i| i == arr[0] }
      p len - 1
    else
      p len - arr.count(arr[ar.index(ar.max)])
    end
end

equalizeArray([3, 3, 2, 1, 3])