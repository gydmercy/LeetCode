
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Write a function to find the longest common prefix string amongst an array of strings.

 */


// Solution: - 

extension String {
    subscript (i: Int) -> Character {
        let index = self.startIndex.advancedBy(i)
        return self[index]
    }
}

class Solution {
    func longestCommonPrefix(strs: [String]) -> String {
        
        if strs.count == 0 {
            return ""
        } else if strs.count == 1 {
            return strs[0]
        } 
        
        var common = commonPrefix(strs[0], strs[1])
        
        for i in 2 ..< strs.count {
            // 多个字符串的最长公共前缀的长度绝对不会超过任意两个字符串的公共前缀
            // 因此只要按顺序遍历整个数组，找出当前公共前缀和下个字符串的公共前缀，最后剩下的就是整个组数的最长公共前缀
            common = commonPrefix(common, strs[i])
            
            // 公共前缀为空的时候直接返回
            if common.characters.count == 0 {
                return ""
            }
        
        }
        
        return common
    }
    
    func commonPrefix(str1: String, _ str2: String) -> String {
    
        var common = ""
    
        let shortLength = min(str1.characters.count, str2.characters.count)
        
        for i in 0 ..< shortLength {
            if str1[i] == str2[i] {
                common.append(str1[i])
            } else {
                break
            }
        }
        
        return common
        
    }
}