=begin
- 昇順にソートされた個別の整数の羅列と、整数のターゲットが与えられる
- 整数の羅列のターゲットを検索する関数を実装する
- 存在すればそのインデックスを返し、そうでなければ-1を返す
- O(logn)時間で実装する
- Example1
```
Input: 
-1 0 2 4 6 8
4
Output: 3
```
- Example2
```
Input:
-1 0 2 4 6 8
3
Output: -1
```
=end

# Iteraton
# def search(nums, target)
#   return -1 if nums.empty?

#   half = nums.length / 2
#   case nums[half] <=> target
#   when 1
#     search(nums[0...half], target)
#   when -1
#     idx = search(nums[half + 1..-1], target)
#     (idx == -1 ? -1 : half + 1 + idx)
#   when 0
#     half
#   end
# end
  
# # Recursion
def search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    half = (left + right) / 2
    case nums[half] <=> target
    when 1
      right = half - 1
    when -1
      left = half + 1
    when 0
      return half
    end
  end
  -1
end

lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
nums = lines[0]
target = lines[1][0]
puts search(nums, target)
