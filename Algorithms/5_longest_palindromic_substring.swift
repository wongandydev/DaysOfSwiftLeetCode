    func longestPalindrome(_ s: String) -> String {
        var result = String()
        var array = Array(s)
        var index = 0 
        while index < array.count {
            print(index)
            if result.count >= (array.count - index) * 2 {
                break
            }
            
            let palindrome = findPalindrome(array, index, index)
            if palindrome.count > result.count {
                result = palindrome
            }
            
            let palindrome2 = findPalindrome(array, index, index + 1)
            if palindrome2.count > result.count {
                result = palindrome2
            }

            index += 1
        }
        
        return result 
    }
    
    func findPalindrome(_ stringArray: [Character], _ left: Int, _ right: Int) -> String{
        var leftIndex = left
        var rightIndex = right
        
        while (leftIndex >= 0 && rightIndex < stringArray.count) {
            if stringArray[leftIndex] != stringArray[rightIndex] {
                break
            }
            
            leftIndex -= 1
            rightIndex += 1
        }
        
        return String(stringArray[leftIndex + 1..<rightIndex])
    }
