class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 1  {
            return 0 
        }
        
        var max = prices.last!
        var output = 0
        
        for index in stride(from: prices.count - 2, through: 0, by: -1) {
            var newOutput = max - prices[index]
            if newOutput > output {
                output = newOutput
            }
            
            max = prices[index] > max ? prices[index]:max
        }
        
        return output
        
        
    }
}