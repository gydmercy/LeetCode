
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Implement pow(x, n).

 */


// Solution: - 

// 思路：
// 对于一个任意一个整数 n , n = (n / 2) * 2 + n % 2
// 所以 pow(x, n) = pow(x, (n / 2) * 2 + n % 2)
//               = pow(x, (n / 2) * 2) * pow(x, n % 2)
//               = pow(pow(x, n  2), 2) * pow(x, n % 2)
//               = pow(x, n  2) * pow(x, n  2) * pow(x, n % 2)
// 因为 n % 2 要么为 正负一， 要么为 零，则
// 令 y = pow(x, n / 2),
// 当 n 为偶数时，pow(x, n) = y * y
// 当 n 为奇数时，根据 n 的正负性，pow(x, n) = y * y * x 或者 pow(x, n) = y * y / x

class Solution {
    func myPow(x: Double, _ n: Int) -> Double {
    
        if n == 0 {
            return 1
        }
        
        var y = myPow(x, n / 2)
        
        if n % 2 == 0 {
            return y * y
        } else {
            if n > 0 {
                return y * y * x
            } else {
                return y * y / x
            }
        }
    }
}