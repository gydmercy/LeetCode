
// Question: -

/**
 
 You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 
 */


// Solution: -

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
class Solution {
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var p = l1
        var q = l2
        
        var carry = 0
        
        var sumNode: ListNode? = nil
        var s: ListNode? = nil
        
        if p != nil {
            
            let sum = p!.val + (q?.val)!
            
            sumNode = ListNode(sum % 10)
            s = sumNode
            
            if sum > 9 {
                carry = 1
            }
            
        } else if q != nil {
            
            let sum = (p?.val)! + q!.val
            
            sumNode = ListNode(sum % 10)
            s = sumNode
            
            if sum > 9 {
                carry = 1
            }
            
        }
        
        while p?.next != nil && q?.next != nil {
            
            p = p?.next
            q = q?.next
            
            let sum = p!.val + q!.val + carry
            
            s?.next = ListNode(sum % 10)
            s = s?.next
            
            if sum > 9 {
                carry = 1
            } else {
                carry = 0
            }
            
        }
        
        while p?.next != nil {
            p = p?.next
            
            let sum = p!.val + carry
            
            s?.next = ListNode(sum % 10)
            s = s?.next
            
            if sum > 9 {
                carry = 1
            } else {
                carry = 0
            }
        }
        
        while q?.next != nil {
            q = q?.next
            
            let sum = q!.val + carry
            
            s?.next = ListNode(sum % 10)
            s = s?.next
            
            if sum > 9 {
                carry = 1
            } else {
                carry = 0
            }
        }
        
        if carry == 1 {
            
            s?.next = ListNode(carry)
            s = s?.next
            
        }
        
        return sumNode
        
    }
}
