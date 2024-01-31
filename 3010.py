class Solution:
  def minimumCost(self, nums: List[int]) -> int:
    ns = nums[:1] + sorted(nums[1:])
    return sum(ns[0:3])
