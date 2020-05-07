func letterCombinations(_ digits: String) -> [String] {
    var phoneBook: [String: [String]] = ["2":["a","b","c"],
                                        "3":["d","e","f"],
                                        "4":["g","h","i"],
                                        "5":["j","k","l"],
                                        "6":["m","n","o"],
                                        "7":["p","q","r","s"],
                                        "8":["t","u","v"],
                                        "9":["w","x","y", "z"]]
    
    var arrayOfCombos = [String]()

    for digit in digits {
        if arrayOfCombos.count == 0{
            arrayOfCombos = phoneBook[String(digit)]!
            continue
        }
        
        var newArrayOfCombos = [String]()
        var currentDict = phoneBook[String(digit)]!
        print(currentDict)
        for a in arrayOfCombos {
            for c in currentDict {
                newArrayOfCombos.append("\(a)\(c)")
            }
        }
        
        
        arrayOfCombos = newArrayOfCombos
    }
    
    return arrayOfCombos
}