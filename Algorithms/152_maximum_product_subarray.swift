class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var maxProduct = nums[0], maxTemp = 1, minTemp = 1 
        
        for i in 0..<nums.count {
            var temp1 = nums[i] * maxTemp
            var temp2 = nums[i] * minTemp
            
            maxProduct = max(maxProduct, temp1, temp2)
            maxTemp = max(temp1, temp2, 1)
            minTemp = min(temp1, temp2, 1)
        }
        
        return maxProduct
    }
}