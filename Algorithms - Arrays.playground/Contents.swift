import Foundation

/*
 Two Sum:
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.

 Example:

 Input: nums = [2, 7, 11, 15], target = 9
 Output: [0, 1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

 Constraints:
     2 <= nums.length <= 10^4
     -10^9 <= nums[i] <= 10^9
     -10^9 <= target <= 10^9
     Only one valid answer exists.
 */

class Solution {
   func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       for (firstIndex, _) in nums.enumerated() {
           for (index, element) in nums.enumerated() {
               if nums[firstIndex] + nums[index] == target && firstIndex != index {
                   return [firstIndex, index]
               }
           }
       }
       return []
   }
}

let case1 = Solution().twoSum([2,7,11,15], 9) // [0, 1]
let case2 = Solution().twoSum([3,2,4], 6) // [1, 2]
let case3 = Solution().twoSum([3,3], 6) // [0, 1]
let failingTestCase = Solution().twoSum([3,2,3], 6) // [0, 2]
let problem = Solution().twoSum([-1,-2,-3,-4,-5], -8) // [2, 4]
print(problem)
