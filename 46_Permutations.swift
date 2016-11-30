
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Given a collection of distinct numbers, return all possible permutations.

 For example, [1,2,3] have the following permutations:

    [
        [1,2,3],
        [1,3,2],
        [2,1,3],
        [2,3,1],
        [3,1,2],
        [3,2,1]
    ]

 */


// Solution: - 

class Solution {
    
    // 全局变量记录结果
    var result = [[Int]]()
    
    func permute(nums: [Int]) -> [[Int]] {
        
        dfs([Int](), nums)
        
        return result
    }
    
    // 深度优先遍历
    func dfs(middleResult: [Int], _ nums: [Int]) {
        
        for i in 0 ..< nums.count {
            
            var middleRe = middleResult
            var tempNums = nums
            
            middleRe.append(nums[i])
            tempNums.removeAtIndex(i)
            
            // 递归到最下面一层时，返回
            if tempNums.count == 0 {
                result.append(middleRe)
                return
            } else {
                dfs(middleRe, tempNums)
            }
            
        }
        
    }
}