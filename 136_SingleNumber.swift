
//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Given an array of integers, every element appears twice except for one. Find that single one.

 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

 */


// Solution: - 

class Solution {
    // 使用异或
    func singleNumber(nums: [Int]) -> Int {
        var tmp = 0
        for n in nums {
            tmp ^= n
        }
        return tmp
    }
}