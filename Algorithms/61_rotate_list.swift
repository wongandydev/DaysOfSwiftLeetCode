func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    var arr = [Int]()
    var currentNode = head 
    
    while currentNode != nil {
        arr.append(currentNode!.val)
        currentNode = currentNode!.next
    }
    
    if arr.count < 2 {
        return head
    }
    
    var answer = Array(repeating: 0, count: arr.count)
    
    for (index,a) in arr.enumerated() {
        let k = k > arr.count ? k%arr.count : k
        
        if index + k < arr.count {
            answer[index + k] = a
        } else {
            answer[(index + k) - arr.count] = a
        }
    }
    
    var answers = ListNode(0)
    var answerList = answers
    
    for a in answer {
        answerList.next = ListNode(a)
        answerList = answerList.next!
    }
    
    return answers.next
    
}