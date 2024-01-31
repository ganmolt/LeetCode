class Solution {
  public int minimumCost(int[] nums) {
    int[] subArray = Arrays.copyOfRange(nums, 1, nums.length);
    Arrays.sort(subArray);
    return nums[0] + subArray[0] + subArray[1];
  }
}
