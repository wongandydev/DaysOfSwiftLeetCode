func sortColors(_ nums: inout [Int]) {
    var zeroIndex = 0
    var twoIndex = nums.count - 1
    
    var index = 0
    
    while index <= twoIndex {
        if nums[index] == 0 {
            nums.swapAt(index, zeroIndex)
            index += 1
            zeroIndex += 1
        } else if nums[index] == 2 {
            nums.swapAt(index, twoIndex)
            twoIndex -= 1 
        } else {
            index += 1
        }
    }
}