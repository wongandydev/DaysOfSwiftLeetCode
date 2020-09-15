class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: m), count: n)
        
        // First row add 1
        for i in 0..<m {
            dp[0][i] = 1
        }
        
        // First column add 1 
        for j in 0..<n{
            dp[j][0] = 1
        }
        
        // now we interate start from where we haven't added anything to the Dp; the ones, and we add the number to it's left and it's right.
        for i in 1..<m {
            for j in 1..<n {
                dp[j][i] = dp[j-1][i] + dp[j][i-1]
            }
        }
        
        return dp[n-1][m-1]
    }
}