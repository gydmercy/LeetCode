
//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). 
 n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). 
 Find two lines, which together with x-axis forms a container, such that the container contains the most water.

 Note: You may not slant the container.

 Subscribe to see which companies asked this question

 */


// Solution: - 

class Solution {
    func maxArea(height: [Int]) -> Int {
        var maxContainerArea = 0
        var currentContainerArea = 0
        
        var i = 0, j = height.count - 1
        while i < j {
            // 由于是盛水的容器，所以高要按短边来，算矩形面积
            currentContainerArea = (j - i) * min(height[i], height[j])
            maxContainerArea = max(maxContainerArea, currentContainerArea)
            
            // 由于指针向中间靠拢的时候边减小，所以高数值大的不动，才能保证面积尽量大
            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        
        return maxContainerArea
    }
}