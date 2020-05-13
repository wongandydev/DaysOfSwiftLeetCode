func subsets(_ nums: [Int]) -> [[Int]] {
    
    return nums.reduce([[]]){result, num in
        return result + result.map{$0 + [num]}
    }
}