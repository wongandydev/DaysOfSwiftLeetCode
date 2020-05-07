func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard let currentHead = head, n > 0 else {
        return nil
    }
    
    var firstNode = currentHead 
    var secondNode = currentHead
    var count = 0 
    
    //This makes sure that the firstPoint and second are always n apart
    
    // keep iterating till we hit the end
    while firstNode.next != nil {
        if count >= n {
            secondNode = secondNode.next!
        }
        count += 1
        firstNode = firstNode.next!
    }
    
    
    if n == count + 1 {
        return secondNode.next
    }
    
    // then we remove the second pointer 
    secondNode.next = secondNode.next?.next
    // return it without the first node since that is just hard coded 0
    return currentHead
}