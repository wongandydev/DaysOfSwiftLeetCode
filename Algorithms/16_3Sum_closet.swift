    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var sortedNums = nums.sorted()
        var closestDist = Int.max
        var closestSum = Int.max
        
        for index in 0..<sortedNums.count - 2 {
            var secondNumber = index + 1
            var thirdNumber = sortedNums.count - 1
            
            // make sure we exxhausted all options.
            while (secondNumber < thirdNumber) {
                var sum = sortedNums[index] + sortedNums[secondNumber] + sortedNums[thirdNumber]
                
                var distance = target - sum // target = 2 sum = 1 + 2 + 10 => 13 // 2 - 13 - 11 
                
                if distance < 0 {
                    thirdNumber -= 1 //1 + 2 + 9 => 12 // 2 - 12 - 10 
                } else if distance > 0 {
                    secondNumber += 1 // if 1 + 2 + 3 => 6 // target = 10 - 6 = 4    SO 1 + 3 + 3 = 7 10 - 7 = 4
                } else {
                    // distance == 0 
                    return sum 
                }
                
                if closestDist > abs(distance) {
                    closestSum = sum
                    closestDist = abs(distance)
                }
            }
        }
        
        return closestSum
        
    }