# @param {Integer[]} nums
# @return {String}
def triangle_type(nums)
  return 'none' if nums.any? { |e| nums.sum - 2*e <= 0 }
  return 'equilateral' if nums.uniq.count == 1
  return 'isosceles' if nums.uniq.count == 2
  "scalene"
end
