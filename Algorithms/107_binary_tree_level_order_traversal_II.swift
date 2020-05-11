/**
    The way this code works is that we have a queue that will be the one that will have all the nodes at each level. 
    This is done when we check for left and right at each level. 
    after the root it has one left and one right but when we check the left we add its 
    left and right and we do the same for the right one. But they won't be in the while loop since 
    we store a count for it. WHich effectively gives us nodes per level
**/

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    
    var stack: [[Int]] = []
    var queue: [TreeNode?] = []
    
    queue.append(root)
    
    while !queue.isEmpty { 
        var count = queue.count - 1
        var temp = [Int]()
        
        while count >= 0 {
            if let node = queue.removeFirst() {
                temp.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                
                count -= 1
            }
        }
        
        !temp.isEmpty ? stack.insert(temp, at: 0) : nil            
    }
    
    return stack
}