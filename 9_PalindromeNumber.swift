
//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Determine whether an integer is a palindrome. Do this without extra space.

 */


// Solution: - 

class Solution {
    func isPalindrome(x: Int) -> Bool {
        var number = x
        var mirror = 0
        
        // 负数直接返回 false
        if number < 0 {
            return false
        }
        
        while number != 0 {
            mirror = 10 * mirror + number % 10
            number = number / 10
        }
        
        if x == mirror {
            return true
        } else {
            return false
        }
        
    }
}