//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Given a string, find the length of the longest substring without repeating characters.

 Examples:

 Given "abcabcbb", the answer is "abc", which the length is 3.

 Given "bbbbb", the answer is "b", with the length of 1.

 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

 */


// Solution: - 

class Solution {
    func lengthOfLongestSubstring(s: String) -> Int {
        var length = 0
        
        var i = 0, j = 0
        var chars = [Character]()
        var charsDic = [Character: Int]()
        
        // 字符串转换成字符数组
        for s in s.characters {
            chars.append(s)
        }
        
        while i < chars.count && j < chars.count {
            // 将符数组添加到字典中，以值作为索引，索引作为值
            if charsDic[chars[j]] == nil {
                charsDic[chars[j]] = j
                j += 1
            } else {
                charsDic.removeValueForKey(chars[i])
                i += 1
            }
            length = max(length, j - i)
        }
        
        return length
    }
}