
//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Given a collection of numbers that might contain duplicates, return all possible unique permutations.

 For example, [1,1,2] have the following unique permutations:

    [
        [1,1,2],
        [1,2,1],
        [2,1,1]
    ]

 */


// Solution: - 

class Solution {
    
    var result = [[Int]]()
    
    func permuteUnique(nums: [Int]) -> [[Int]] {
        // 先进行排序，然后执行DFS
        let n = nums.sort()
        dfs([Int](), n)
        
        return result
    }
    
    func dfs(middleResult: [Int], _ nums: [Int]) {
        
        for i in 0 ..< nums.count {
            
            var middleRe = middleResult
            var tempNums = nums
            
            middleRe.append(nums[i])
            tempNums.removeAtIndex(i)
            
            if tempNums.count == 0 {
                result.append(middleRe)
                return
            } else {
                // 跳过重复的数字
                if (i < nums.count - 1) && (nums[i+1] == nums[i]) {
                    continue
                }
                
                dfs(middleRe, tempNums)
            }
            
        }
        
    }
}

