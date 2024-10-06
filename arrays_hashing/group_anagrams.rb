=begin
- 文字列の羅列が与えられたとき、アナグラムをグループ化する
- 答えは任意の形式で返すことができる
- Example1
```
Input: eat tea tan ate nat bat
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
```
- Example2
```
Input: 
Output: [[""]]
```
- Example3
```
Input: a
Output: [["a"]]
```
=end

def group_anagrams(strs)
  anagrams = Hash.new { |h, k| h[k] = [] }
  strs.each do |str|
    hash = Hash.new(0)
    str.each_char { |c| hash[c] += 1 }
    anagrams[hash] << str
  end
  anagrams.values
end

strs = gets.split(' ')
p group_anagrams(strs)
