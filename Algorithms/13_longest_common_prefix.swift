func longestCommonPrefix(_ strs: [String]) -> String {
        var minCount = Int.max
        
        for str in strs {
            minCount = min(minCount, str.count)
        }
        
        if minCount == Int.max {
            return ""
        }
        
        var index = 0
        var answer = ""
        
        while index < minCount {
            var value = ""
            
            for str in strs {
                if value == "" {
                    value += String(Array(str)[index])
                } else {
                    if value == String(Array(str)[index]) {
                        
                    } else {
                        value = "123"
                        index = minCount
                        break
                    }
                }
            }
            
            if value != "" && value != "123" {
                answer += value
            } 
            
            index += 1
        }

        return answer
    }