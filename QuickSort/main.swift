func quickSort<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) {
  if start < end {
    let pivotIndex = partition(&arr, start, end)
    quickSort(&arr, start, pivotIndex - 1)
    quickSort(&arr, pivotIndex + 1, end)
  }
}

func partition<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) -> Int {
  let pivot = arr[end]
  var i = start - 1

  for j in start..<end {
    if arr[j] <= pivot {
      i += 1
      arr.swapAt(i, j)
    }
  }

  arr.swapAt(i + 1, end)
  return i + 1
}

var array = [7, 1, 17, -4, -2, 9, 3, -3]
quickSort(&array, 0, array.count - 1)
print(array)
