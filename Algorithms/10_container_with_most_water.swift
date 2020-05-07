func maxArea(_ height: [Int]) -> Int {
    var rightIndex = 0
    var leftIndex = height.count - 1

    var maximum = Int.min
    
    while leftIndex > rightIndex {
        var rightPointer = height[rightIndex]
        var leftPointer = height[leftIndex]
        
        maximum = max(maximum, min(rightPointer, leftPointer) * (leftIndex-rightIndex))
        
        if leftPointer > rightPointer {
            rightIndex += 1
        } else {
            leftIndex -= 1
        }
    }
    
    return maximum
}