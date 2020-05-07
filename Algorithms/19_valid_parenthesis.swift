func isValid(_ s: String) -> Bool {
    var sArray = Array(s)
    var characters: [Character:Character] = [")":"(", "]":"[", "}":"{"]
    var stack = [Character]()
    
    for str in sArray {
        var openEnd = characters[str]
        if openEnd == nil {
            stack.append(str)
        } else {
            if stack.popLast() != openEnd {
                return false 
            } 
        }
    }
    
    return stack.count == 0
}