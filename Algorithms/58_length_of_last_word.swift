class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        guard let lastWord = s.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ").last else {
            return -1
        }
        
        return lastWord.count
    }
}