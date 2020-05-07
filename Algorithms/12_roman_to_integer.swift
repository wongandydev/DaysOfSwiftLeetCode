func romanToInt(_ s: String) -> Int {
        var romans = ["M", "D", "C", "L", "X", "V","I"]
        var romanInt = [1000, 500, 100, 50, 10,  5, 1]
        
        var sArray = Array(s)
        var answer = 0
        var index = 0
        
        while index < sArray.count {
            guard let romanNumeralIndex = romans.index(of: String(sArray[index])) else {
                break
            }

            var currentValue = romanInt[romanNumeralIndex]
            answer += currentValue
            
            if index > 0 {
               guard let previousRomanNumeralIndex = romans.index(of: String(sArray[index-1])) else {
                    break
                }   
                
                var previousValue = romanInt[previousRomanNumeralIndex]

                if currentValue > previousValue {
                    answer -= (2 * previousValue)
                }
            }
            
            index += 1
        }
        
        return answer
    }