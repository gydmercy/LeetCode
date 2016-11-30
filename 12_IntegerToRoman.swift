
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Given an integer, convert it to a roman numeral.

 Input is guaranteed to be within the range from 1 to 3999.

 */


// Solution: - 

class Solution {
    func intToRoman(num: Int) -> String {
        // 罗马数字基本数字：I V X L C M D，分别对应 1 5 10 50 100 500 100
        // 此处加上 IV IX XL XC CD CM，即把小数在前的组合也作为基本数字，
        // 这样可以使得处理输入数字的时候，所有基本罗马数字都可以直接拼接在后面，而不用插入到大数前面
        let roman = ["I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"]
        let arab = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
        
        var romanNum = ""
        var n = num
        
        var i = 12
        while i >= 0 && n > 0 {
            if n >= arab[i] {
                romanNum += roman[i]
                n -= arab[i]
            } else {
                i -= 1
            }
        }
        
        return romanNum
    }
}