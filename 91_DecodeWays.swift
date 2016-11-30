
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 A message containing letters from A-Z is being encoded to numbers using the following mapping:

 'A' -> 1
 'B' -> 2
 ...
 'Z' -> 26

 Given an encoded message containing digits, determine the total number of ways to decode it.

 For example, Given encoded message "12", it could be decoded as "AB" (1 2) or "L" (12).

 The number of ways decoding "12" is 2.

 */


// Solution: - 

extension String {
    subscript (index: Int) -> String {
        return String(self[self.startIndex.advancedBy(index)])
    }
}

class Solution {
    func numDecodings(s: String) -> Int {
        
        if s == "" || s[0] == "0" {
            return 0
        }
        
        var m = 1, n = 1
        for i in 1 ..< s.characters.count {
            // 局部解
            var current = 0
            
            if s[i] != "0" {
                current += m
            }
            if s[i-1] == "1" || (s[i-1] == "2" && Int(s[i]) < 7) {
                current += n
            }
            
            n = m
            m = current
            
            // 表示当前局部编码无法解码
            if m == 0 {
                return 0
            }
            
        }
        
        return m
        
    }
}