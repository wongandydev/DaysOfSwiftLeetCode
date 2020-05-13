class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return recur(nums, 0, nums.count-1)
    }
    
    func recur(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        if start > end {
            return nil
        }
        
        let mid = (start + end)/2
        var root = TreeNode(nums[mid])
        root.left = recur(nums, start, mid - 1)
        root.right = recur(nums, mid + 1, end)
        
        return root
    }
}