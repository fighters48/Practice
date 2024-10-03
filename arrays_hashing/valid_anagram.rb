=begin
- 2つの文字列が与えられたとき、アナグラムの関係になっていたら`True`を、そうでなければ`False`を返す
- Example1
```
Input: anagram nagaram
Output: true
```
- Example2
```
Input: rat car
Output: false
```
=end

def is_anagram(s, t)
  return false unless s.length == t.length
  
  hash = Hash.new(0)
  s.each_char.with_index do |_, idx|
    hash[s[idx]] += 1
    hash[t[idx]] -= 1
    puts hash
  end
  hash.all? { |_k, v| v.zero? }
end
  
# def is_anagram(s, t)
#   s.chars.sort.join == t.chars.sort.join
# end

s, t = gets.split(' ')
puts is_anagram(s, t)
