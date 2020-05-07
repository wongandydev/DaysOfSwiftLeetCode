func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (index,value) in nums.enumerated() {
        if let targetIndex = dict[target-value] { // 9 7 
            return [index,targetIndex]
        }
        dict[value] = index
    }
    
    return [-1,-1]
}