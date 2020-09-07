class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let patternArray = Array(pattern)
        let strArray = str.components(separatedBy: " ")
        
        if patternArray.count != strArray.count {
            return false 
        }
        
        var patternArrayNoDuplicates = [String]()
        var strArrayNoDuplicates = [String]()
        
        for a in patternArray {
            if !patternArrayNoDuplicates.contains(String(a)) {
                patternArrayNoDuplicates.append(String(a))
            }
        }
        
        for b in strArray {
            if !strArrayNoDuplicates.contains(b) {
                strArrayNoDuplicates.append(b)
            }
        }
        
        for i in 0..<patternArray.count {
            if patternArrayNoDuplicates.firstIndex(of: String(patternArray[i])) != strArrayNoDuplicates.firstIndex(of: strArray[i]) {
                return false
            }
        }
        
        return true 
    }
}