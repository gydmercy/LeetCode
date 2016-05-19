
//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Implement atoi to convert a string to an integer.

 Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.

 Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.

 Update (2015-02-10):
 The signature of the C++ function had been updated. If you still see your function signature accepts a const char * argument, please click the reload button  to reset your code definition.

 */


// Solution: - 

extension String {
    subscript (index: Int) -> Character {
        return self[self.startIndex.advancedBy(index)]
    }
    
    subscript (range: Range<Int>) -> String {
        let startIndex = self.startIndex.advancedBy(range.startIndex)
        let endIndex = self.startIndex.advancedBy(range.endIndex, limit: self.endIndex)
        return self[Range(startIndex ..< endIndex)]
    }
}

// 将 Character 转换为数字
extension Character {
    func toNumber() -> Int {
        var numberFromCharacter = 0
        for scalar in String(self).unicodeScalars {
            numberFromCharacter = Int(scalar.value) - 48
        }
        return numberFromCharacter
    }
}

class Solution {
    func myAtoi(str: String) -> Int {
    
        var s = str
        
        // 去掉前置空格
        while s.hasPrefix(" ") {
            s = s[1 ..< s.characters.count]
        }
    
        if s == "" {
            return 0
        } else {
            // 第一位是 + 或者 - 或者数字，才能转换，否则直接返回0
            switch s[0] {
            case "+", "-", "0" ... "9":
                return convert(s)   
            default:
                return 0  
            } 
        }
        
    }
    
    func convert(str: String) -> Int {
    
        var s = str
        
        // 中间碰到非数字，就截断，舍弃非数字后面所有的字符    
        for i in 1 ..< str.characters.count {
            if s[i] < "0" || s[i] > "9" {
                s = str[0 ..< i]
                break
            } 
        }
        
        var convertedInt = 0
        var flag = 1 // 标识正负数
        
        if s[0] >= "0" && s[0] <= "9" {
            convertedInt = s[0].toNumber()
        } else if s[0] == "-" {
            flag = -1
        }
        
        for i in 1 ..< s.characters.count {
        
            convertedInt = 10 * convertedInt + s[i].toNumber()
            
            // 超过32位 Int 范围，就输出上下界
            if flag > 0 {
                if convertedInt > 2147483647 {
                    return 2147483647
                }
            } else {
                if convertedInt > 2147483648 {
                    return -2147483648
                }
            }
            
        }
        
        return flag * convertedInt
    }
}