func myAtoi(_ str: String) -> Int {
    var stri = str.trimmingCharacters(in: .whitespaces)
    var isNegative = false 
    var changeCount = 0
    var stt = ""
    
    guard stri.count > 1 else {
        if Int(String(stri.first ?? " ")) != nil {
            return str.count
        } else {
            return 0
        }
        
    }
    
    for c in stri {
        if c == "-" {
            if !stt.isEmpty {
                break
            }
            
            isNegative = true
            changeCount += 1
        } else if c == "+" {
            if !stt.isEmpty {
                break
            }
            
            changeCount += 1
        } else if Int(String(c)) != nil {
            stt += String(c)
        } else {
            break
        }
    }
    
    guard var intStt = Int(stt) else {
        if stt.count > 10 {
            return isNegative ? Int(Int32.min) : Int(Int32.max)
        } else {
            return 0
        }
    }
    
    guard changeCount < 2 else {
        return 0
    }
    
    intStt = isNegative ? -intStt : intStt
    
    if intStt < Int32.min {
        return Int(Int32.min)
    } else if intStt > Int32.max {
        return Int(Int32.max)
    }
    
    return intStt
}