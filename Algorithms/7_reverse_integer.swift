func reverse(_ x: Int) -> Int {
    var max = 2147483648
    var min = -2147483648
    if min < x && x < max {
        var inputTemp = x
        var newReverse = ""
        var isNegative = false 
        
        if x == 0 {
            return 0
        }
        
        if x < 0 {
            inputTemp = abs(x)
            isNegative = true
        }
        
        while inputTemp > 0 {
            newReverse += String(inputTemp % 10)
            inputTemp = inputTemp / 10
        }
        
        var answer = Int(newReverse) 
        
        if isNegative {
            answer = -answer!
        }
        
        if min > answer! || answer! > max { 
            return 0
        }
        
        return answer!
    } else {
        return 0
    }
}