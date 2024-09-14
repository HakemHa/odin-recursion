def merge_sort(arr)
  if arr.length() < 3
    if arr.length() == 2
      return [arr.min(), arr.max()]
    else
      return [*arr]
    end
  end
  m = arr.length()/2.0
  arr1 = merge_sort(arr[0...m])
  arr2 = merge_sort(arr[m...arr.length()])
  arr3 = []
  i1 = 0
  i2 = 0
  for i in 0...arr.length() do
    if i2 < arr2.length() && (i1 >= arr1.length() || arr1[i1] > arr2[i2]) then
      arr3 << arr2[i2]
      i2 += 1
    else
      arr3 << arr1[i1]
      i1 += 1
    end
  end
  return arr3
end