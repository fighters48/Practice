=begin
- 整数の配列 nums と整数の target が与えられたとき、
nums[i] + nums[j] == target かつ i != j となるような添字 i と j を返す
- どの入力も、条件を満たす添字 i と j のペアをちょうど1つずつ持っていると仮定してもよい
- 添字の小さい方から答えを返す
- Example1
```
Input: 
3 4 5 6
7
Output: [0,1]
```
- Example2
```
Input:
4 5 6
10
Output: [0,2]
```
- Example3
````
Input:
5 5
10
Output: [0,1]
```
=end

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, idx|
    return [hash[num], idx] if hash.key? num

    hash[target - num] = idx
  end
  nil
end

lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
nums = lines[0]
target = lines[1][0]
p two_sum(nums, target)
