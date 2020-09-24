class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sSorted = s.sorted()
        var tSorted = t.sorted() 
        
        for index in 0..<t.count {
            if index == t.count - 1 {
                return tSorted.last!
            }
            
            if sSorted[index] != tSorted[index] {
                return tSorted[index]
            }
            
        }

        
        return "a"
    }
}