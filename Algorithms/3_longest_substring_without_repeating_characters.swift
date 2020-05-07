    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maximum = 0
        var chars = [Character: Int]()
        var lastRepeatingPosition = -1 // it is negative one so that when we deduct currentPos with lastPos if it is 0, we can add one b/c its technically one
        var currentPosition = 0 
        
        for c in s {
            // make sure that the char we are checking already was tracked, and that where it is is beyond our last repeating position that we already stored. 
            if chars[c] != nil && chars[c]! > lastRepeatingPosition {
                lastRepeatingPosition = chars[c]!
            }
            
            maximum = max(currentPosition - lastRepeatingPosition, maximum)
            chars[c] = currentPosition // save the new position in the dict if it shows again. 
            
            currentPosition += 1
        }
        
        
        return maximum
    }