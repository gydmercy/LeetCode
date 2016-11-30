
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Reverse digits of an integer.

 Example1: x = 123, return 321
 Example2: x = -123, return -321

 */


// Solution: - 

class Solution {
    func reverse(x: Int) -> Int {
        
        var strX = ""
        var flag = "" // 正负号标志位
        
        if x < 0 {
            strX = String(x).substringFromIndex(String(x).startIndex.advancedBy(1))
            flag = "-"
        } else {
            strX = String(x)
            flag = ""
        }
        
        let reversedInt = Int(flag + reverseString(strX))!
        
        // 溢出(超过32位Int范围)，则直接返回0
        if reversedInt > 2147483647 || reversedInt < -2147483648 {
            return 0
        } else {
            return reversedInt
        }
        
    }
    
    func reverseString(s: String) -> String {
        
        var strArray = [Character]()
        
        for c in s.characters {
            strArray.append(c)
        }
        
        return String(strArray.reverse())
        
    }   
}