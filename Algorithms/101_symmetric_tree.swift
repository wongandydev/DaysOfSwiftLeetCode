func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    return traverseLeftThenRight(root.left) == traverseRightThenLeft(root.right)
}

func traverseLeftThenRight(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [-1] }
    return [root.val] + traverseLeftThenRight(root.left) + traverseLeftThenRight(root.right)
}

func traverseRightThenLeft(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [-1] }
    return [root.val] + traverseRightThenLeft(root.right) + traverseRightThenLeft(root.left)
}