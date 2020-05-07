func isPalindrome(_ x: Int) -> Bool {
    var input = x 
    var intToStringArray = Array(String(x))
    var isPalindrome: Bool?
    
    var breakPoint = (intToStringArray.count/2) 
    var firstHalf = [Character]()
    var secondHalf = [Character]()

    
    if intToStringArray.count < 2 {
        return true
    } else if  intToStringArray.count == 0 {
        return false 
    }
    
    if intToStringArray.count % 2 == 0 { // even 
        firstHalf = Array(intToStringArray[0..<breakPoint])
        secondHalf = Array(intToStringArray[breakPoint...intToStringArray.count-1])

        if firstHalf == secondHalf {
            isPalindrome = true
        } else {
            isPalindrome = false
        }
    } else {
        firstHalf = Array(intToStringArray[0..<breakPoint])
        secondHalf = Array(intToStringArray[breakPoint+1...intToStringArray.count-1])
    }

    var firstIndex = 0
    var secondIndex = firstHalf.count - 1
    
    while firstIndex <= firstHalf.count - 1 {
        if firstHalf[firstIndex] == secondHalf[secondIndex] {
            firstIndex += 1
            secondIndex -= 1
            isPalindrome = true
        } else {
            isPalindrome = false
            break
        }
    }
    
    if let isPalindrome = isPalindrome {
        return isPalindrome
    }
    
    return false
    
}

/**
After doing this solution and now looking back after having done this at my third day of leetcoding and it has now been about 1 month and a half, 
I can see that a better solution is to reverse the String and see if they are the same then this is a palidrome number

func isPalindrome(_ x: Int) -> Bool {
    return String(x) == String(String(x).reversed()) 
}
**/