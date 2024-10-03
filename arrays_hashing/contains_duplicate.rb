=begin
- 標準入力で整数が与えられたとき、同じ値が複数回出現していれば`True`を、
そうでなければFalseを返すコードを実装する

- Example1
```
Input: 1 2 3 3
Output: true
```
- Example2
```
Input: 1 2 3 4
Output: false
```
=end

def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    return true if hash.key?(num)

    hash[num] = true
  end
  false
end

nums = gets.split(' ').map(&:to_i)
puts contains_duplicate(nums)
