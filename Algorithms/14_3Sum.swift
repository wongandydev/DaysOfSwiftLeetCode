
func threeSum(_ nums: [Int]) -> [[Int]] {
    let count = nums.count
    let sortedArr = nums.sorted()
    
    guard count > 2 else{
        return []
    }
    
    var answer = [[Int]]()
    
    for i in 0...(count-3){
        let one = sortedArr[i]
        var low = i + 1
        var high = count - 1
        let sum = 0 - one
        guard i == 0 || sortedArr[i-1] != sortedArr[i] else {
            continue
        }
        
        while low < high{
            if sortedArr[low] + sortedArr[high] == sum{
                answer.append([one, sortedArr[low], sortedArr[high]])
                while low + 1 <= high, sortedArr[low] == sortedArr[low + 1]{
                    low += 1
                }
                while low <= high - 1, sortedArr[high] == sortedArr[high - 1]{
                    high -= 1
                }
                high -= 1
                low += 1
            }
            else if sortedArr[low] + sortedArr[high] >= sum{
                high -= 1
            }
            else{
                low += 1
            }
        }
    }
    return answer
}