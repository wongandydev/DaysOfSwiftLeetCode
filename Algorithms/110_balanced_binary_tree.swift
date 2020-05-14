class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        
        let left = dfs(root.left)
        let right = dfs(root.right)
        
        return abs(left-right) < 2 && isBalanced(root.left) && isBalanced(root.right)
    }
    
            
    
    func dfs(_ root: TreeNode?) -> Int {
        guard let root = root else { return -1 }
        
        let left = dfs(root.left)
        let right = dfs(root.right)
        
        return 1 + max(left, right)
    }
}