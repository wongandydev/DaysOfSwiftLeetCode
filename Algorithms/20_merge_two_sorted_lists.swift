func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var list1 = l1
    var list2 = l2
    
    var newList = ListNode(0)
    var tempList = newList
    
    
    while list1 != nil && list2 != nil {
        if list1!.val < list2!.val {
            tempList.next = list1
            list1 = list1!.next
        } else {
            tempList.next = list2
            list2 = list2!.next
        }
        tempList = tempList.next!
    }
    
    if list1 != nil {
        tempList.next = list1
    }
    
    if list2 != nil {
        tempList.next = list2
    }
    
    return newList.next
}