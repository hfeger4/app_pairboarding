def quicksort(arr)
  return arr if arr.length <= 1
  pivot = arr.first
  left = quicksort(arr[1..-1].select{|el| el <= pivot})
  right = quicksort(arr[1..-1].select{|el| el > pivot})
  return left + [pivot] + right
end

quicksort([1,6,2,3,5,4])
