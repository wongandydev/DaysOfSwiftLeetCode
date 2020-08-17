class Solution {
    func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
        var arr = Array(repeating: 0, count: num_people)
        
        var index = 0
        var candyPasser = 1
        var numOfCandiesGiven = 0 
        
        while numOfCandiesGiven <= candies {
            if candies - numOfCandiesGiven < candyPasser {
                arr[index] += candies - numOfCandiesGiven 
            } else {
                arr[index] += candyPasser 
            }
            
            numOfCandiesGiven += candyPasser
            candyPasser += 1
            
            if index == arr.count - 1 {
                index = 0
            } else {
                index += 1
            }
        }
        
        return arr
    }
}