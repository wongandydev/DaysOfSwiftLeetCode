/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

struct SeperateDigit {
    var endDigit: Int 
    var startDigit: Int
}

class Solution {
    
    func addNodeToEndOfLinkedList(node: ListNode, nextNode: ListNode) {
        var lastNode = node
        while lastNode.next != nil {
            if let iterateNode = lastNode.next {
                lastNode = iterateNode
            }
        }
        
        lastNode.next = nextNode
    }
    
    func seperateLargeSum(_ sum: Int) -> SeperateDigit {
        return SeperateDigit(endDigit: sum%10, startDigit: sum/10)
    }
 
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var nextTempHolder = 0 //This holds the digit greater than 9
        var answer: ListNode?
        
        if let l1 = l1, let l2 = l2 {
            var currentL1Node = l1
            var currentL2Node = l2
        
            while currentL1Node.val != -10 || currentL2Node.val != -10 {
                var tempHolder = 0 //holds the additional numbers for now
                var currentSum = 0
                
                // add sum based on if there is value 
                if currentL1Node.val != -10 && currentL2Node.val != -10 {
                    currentSum = currentL1Node.val + currentL2Node.val
                } else if currentL2Node.val != -10 {
                    currentSum = currentL2Node.val
                } else {
                    currentSum = currentL1Node.val
                }
                
                if nextTempHolder != 0 {
                    currentSum += nextTempHolder
                    nextTempHolder = 0
                }
                
                if currentSum > 9 {
                    let seperateNumber = seperateLargeSum(currentSum)
                    print(seperateNumber)
                    currentSum = seperateNumber.endDigit
                    tempHolder = seperateNumber.startDigit
                }
                
                nextTempHolder = tempHolder
                
                if let nextL1Node = currentL1Node.next {
                    currentL1Node = nextL1Node
                } else {
                    currentL1Node = ListNode(-10)
                }
                
                if let nextL2Node = currentL2Node.next {
                    currentL2Node = nextL2Node
                } else {
                    currentL2Node = ListNode(-10)
                }
                
                if let nanswer = answer {
                    let nextNode = ListNode(currentSum)
                    addNodeToEndOfLinkedList(node: nanswer, nextNode: nextNode)
                } else {
                    answer = ListNode(currentSum)
                }
            }

            // this is for when we iterate through to the end and there is still an extra at the end. 
            if nextTempHolder != 0 {
                print("here")
                if let nanswer = answer {
                    let nextNode = ListNode(nextTempHolder)
                    addNodeToEndOfLinkedList(node: nanswer, nextNode: nextNode)
                }
            }
            
        }
        return answer
    }
}