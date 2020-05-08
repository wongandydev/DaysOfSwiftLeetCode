func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var arr = [Int]()
    var currentNode = head
    
    while currentNode != nil && currentNode?.next != nil {
        if currentNode?.val == currentNode?.next?.val {
            currentNode?.next = currentNode?.next?.next
        } else {
            currentNode = currentNode?.next
        }
        
    }
    return head
}