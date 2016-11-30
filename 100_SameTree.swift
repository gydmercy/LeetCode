
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Given two binary trees, write a function to check if they are equal or not.

 Two binary trees are considered equal if they are structurally identical and the nodes have the same value.

 */


// Solution: - 

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        // 两个树对应的节点都没有子节点，且节点的值相等，则返回 ture
        if p?.left == nil && p?.right == nil && q?.left == nil && q?.right == nil && p?.val == q?.val {
            return true
        } else {
            // 节点值不相等直接返回 false
            if p?.val != q?.val {
                return false
            } 
            // 递归判断
            else {
                return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
            }
        }
    }
}