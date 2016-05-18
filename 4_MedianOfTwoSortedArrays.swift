//
//==============================
// Author: Mercy
// Email:  bluegyd@vip.qq.com
//==============================
//


// Question: -

/**
 
 There are two sorted arrays nums1 and nums2 of size m and n respectively. Find the median of the two sorted arrays. 

 The overall run time complexity should be O(log (m+n)).

 */


// Solution: - 

class Solution {
    func findMedianSortedArrays(nums1: [Int], _ nums2: [Int]) -> Double {
        var median = 0.0
        var nums3 = [Int]()
        
        var i = 0, j = 0
        
        while i < nums1.count && j < nums2.count {
            
            if nums1[i] <= nums2[j] {
                nums3.append(nums1[i])
                i += 1
            } else {
                nums3.append(nums2[j])
                j += 1
            }
            
        }
        
        while i < nums1.count {
            nums3.append(nums1[i])
            i += 1
        }
        
        while j < nums2.count {
            nums3.append(nums2[j])
            j += 1
        }
        
        // 奇数个数的中位数是最中间的那个数，偶数个数的中位数是最中间两个数的平均数
        if nums3.count % 2 == 0 {
            median = (Double(nums3[(nums3.count / 2)]) + Double(nums3[(nums3.count / 2 - 1)])) / 2
        } else {
            median = Double(nums3[(nums3.count / 2)])
        }
        
        return median
    }
}