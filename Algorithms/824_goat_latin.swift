class Solution {
    func toGoatLatin(_ S: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        var ans = ""
        
        var a = "a"
        
        var SArray = S.components(separatedBy: " ")

        for (index, word) in SArray.enumerated() {
            let firstChar = String(Array(word)[0])
            if vowels.contains(firstChar.lowercased()) {
                var word = word
                word.append("ma")
                ans.append("\(word+a)\(index == SArray.count - 1 ? "":" ")")
            } else {
                var word = word
                word.remove(at: word.startIndex)
                ans.append("\(word+firstChar)ma\(a)\(index == SArray.count - 1 ? "":" ")")
            }
            a.append("a")
        }
        
        return ans
    }
}