//
//==============================
// Author: Mercy
// Email:  gyd0915@gmail.com
//==============================
//


// Question: -

/**
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 
 UPDATE (2016/2/13):
 The return format had been changed to zero-based indices. Please read the above updated description carefully.

 */


// Solution: - 

class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
    
        var indices = [Int]()
        var numDic = [Int: Int]() // 字典索引查找时间复杂度为O(1)
        
        for i in 0 ..< nums.count {
        
            let numberToFind = target - nums[i]
                
            if let index = numDic[numberToFind] {
                    
                indices.append(i)
                indices.append(index)
                    
                break;
                    
            } else {
                    
                numDic[nums[i]] = i // 将数组转化为字典，数组值作为索引，数组索引作为值
                    
            }
                
        }
        
        return indices
    }
}