    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        var n = s.count
        var cycleLen = 2 * numRows - 2
        var answer = ""

        for i in 0..<numRows {
            var j = 0
            while j + i < n {
                answer.append(s[s.index(s.startIndex, offsetBy: i+j)])
                if (i != 0 && i != numRows - 1 && j + cycleLen - i < n) {
                    print(j + cycleLen - i)
                    print("true")
                    answer.append(s[s.index(s.startIndex, offsetBy: j + cycleLen - i)])
                }
                j += cycleLen
            }
        }
        
        
        return answer
    }