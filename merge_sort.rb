def merge_sort(n)
    return n if n.length < 2 # base case
    # sort left half
    arr1 = merge_sort(n.slice!(0, (n.length / 2).floor ))
    # sort right half 
    arr2 = merge_sort(n)
    # merge two halfs
    # return (arr1 + arr2).sort => (quick solution)
    # logical solution:
    merged_arr = []
    until arr1.empty? || arr2.empty?
        arr1[0] > arr2[0] ? merged_arr << arr2.shift : merged_arr << arr1.shift
    end
    return arr1.empty? ? merged_arr += arr2 : merged_arr += arr1
end

p merge_sort([4, 8, 6, 2, 9, 7, 17, 3])