class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var answer = [[Int]]()
        var temp = [Int]()
        
        recur(&answer, &temp, 1, n, k)
        
        return answer
    }
    
    func recur(_ answer: inout [[Int]], _ temp: inout [Int], _ start: Int, _ n: Int, _ k: Int) {
        if k == 0 {
            answer.append(temp)
            return 
        }
        
        var i = start 
        
        for i in i...n - k + 1 {
            temp.append(i) 
            recur(&answer, &temp, i + 1, n, k - 1)
            temp.removeLast()
        }
    }
}