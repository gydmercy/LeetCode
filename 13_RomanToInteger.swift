
//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Given a roman numeral, convert it to an integer.

 Input is guaranteed to be within the range from 1 to 3999.

 */


// Solution: - 

extension String {
    subscript (i: Int) -> String? {
        let index = self.startIndex.advancedBy(i)
        // 因为要提取当前的下一位，所以索引可能越界
        if index < self.endIndex {
            return String(self[index])
        } else {
            return nil
        }
        
    }
}

class Solution {
    func romanToInt(s: String) -> Int {
        
        let romanArab: [String: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        var arabNum = 0
        
        var i = 0
        var c = "", cc = ""
        let length = s.characters.count
        while i < length {
        
            if let tempC = s[i] {
                c = tempC
            }
            
            // 判断当前位上的字符和下一位组成的字符能否组成一下罗马基本数字（IV IX XL XC CD CM）
            // 如果可以，就将这两位作为一个基本数字
            if let tempCNext = s[i + 1] {
            
                cc = c + tempCNext
                
                switch cc {
                case "IV":
                    arabNum += 4
                    i += 2
                    continue
                case "IX":
                    arabNum += 9
                    i += 2
                    continue
                case "XL":
                    arabNum += 40
                    i += 2
                    continue
                case "XC":
                    arabNum += 90
                    i += 2
                    continue
                case "CD":
                    arabNum += 400
                    i += 2
                    continue
                case "CM":
                    arabNum += 900
                    i += 2
                    continue
                default:
                    break
                }
            }
            
            // 否则就直接将当前位字符转化为阿拉伯数字
            if let ra = romanArab[c] {
                arabNum += ra
                i += 1
            }
            
        }
        
        return arabNum
    }
}