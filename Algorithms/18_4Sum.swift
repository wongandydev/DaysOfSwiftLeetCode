func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    var sortedNums = nums.sorted() 
    var answer = Array<[Int]>()
    
    if nums.count < 4 {
        return answer 
    }
    //[-1,0,1,2,3,4]
    
    for i in 0...sortedNums.count - 4 { //-1
        // we do not want to test cases that have already been tested
        if i > 0 && sortedNums[i] == sortedNums[i-1] { 
            continue 
        } 
        // 0
        // don't want to cross to the last element 
        for j in i+1...sortedNums.count - 3 { 
            // we do not want to test cases that have already been tested
            if j > i+1 && sortedNums[j] == sortedNums[j-1] { 
                continue 
            } 
            
            var left = j + 1 //1
            var right = sortedNums.count - 1 //4 , 3, 2
            
            while right > left {
                var sum = sortedNums[i] + sortedNums[j] + sortedNums[left] + sortedNums[right]
                if sum == target {
                    answer.append([sortedNums[i], sortedNums[j], sortedNums[left], sortedNums[right]])
                    
                    left += 1
                    right -= 1 
                    
                    while right > left && sortedNums[right] == sortedNums[right + 1] {
                        right -= 1 
                    } 
                    
                    while right > left && sortedNums[left] == sortedNums[left - 1] {
                        left += 1 
                    } 
                } else if sum > target {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
    }
    
    return answer
}