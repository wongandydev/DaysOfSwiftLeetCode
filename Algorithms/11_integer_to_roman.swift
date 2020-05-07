func intToRoman(_ num: Int) -> String {
    
    var romanDictionary: [Int: [Int: String]] = [0: [1000: "M"], 
                                                    1: [900: "CM"],
                                                    2:  [500: "D"], 
                                                    3:  [400: "CD"], 
                                                    4:  [100 : "C"], 
                                                    5:  [90:"XC"], 
                                                    6:  [50: "L"], 
                                                    7:  [40: "XL"], 
                                                    8:  [10: "X"], 
                                                    9:  [9:"IX"], 
                                                    10:  [5 : "V"], 
                                                    11:  [4:"IV"],
                                                    12:  [1: "I"]]
            
    
    var numberInstance = num
    var stringVar = ""
    var index = 0
    
    while index < romanDictionary.count || numberInstance != 0{
        if numberInstance >= romanDictionary[index]!.first!.key {
            stringVar += romanDictionary[index]!.first!.value
            numberInstance -= romanDictionary[index]!.first!.key
        } else {
            index += 1
        }
    }
    
    return stringVar
}