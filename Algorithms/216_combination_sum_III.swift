class Solution {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var ans = [[Int]]()
        
        for i in 1...9 {
            // add all possibilities for first digit
            recur(&ans, n-i, i + 1, k-1, [i])
        }
        
        return ans
                
    }
    
    func recur(_ ans: inout[[Int]], _ goal: Int, _ num: Int, _ digitsLeft: Int, _ currentArr: [Int]) {
        
        // if we hit target and at the last digit, append to ans array. 
        if goal == 0  && digitsLeft == 0{
            ans.append(currentArr)
            return 
        }
        
        // if there is no digits left; goal is hit or over, or the number is larger than nine, we return. 
        if digitsLeft <= 0 || goal <= 0 || num > 9 {
            return 
        }
        
        for i in num...9 {
            // we are add all possibiliies for each digit. 
            recur(&ans, goal-i, i + 1, digitsLeft-1, currentArr + [i])
        }
        
        
    }
}