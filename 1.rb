# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |n, i|
    t = target - n
    ((i+1)...nums.length).each do |j|
      return [i, j] if nums[j] == t
    end
  end
end
