=begin
- 標準入力にて次の文字からなる文字列が与えられる
  - '(', ')', '{', '}', '[', ']'
- 入力文字列は、以下の場合に限り`True`を返し、そうでなければ`false`を返す
  1. どの開き括弧も同じ種類の閉じ括弧で閉じられている
  2. どの開き括弧も正しい順序で閉じられている
  3. どの閉じ括弧も対応する同じ種類の開き括弧を持っている
- Example1
```
Input: []
Output: true
```
- Example2
```
Input: ([{}])
Output: true
```
- Example3
```
Input: [(])
Output: false
```
=end

def is_valid(s)
  paren = []
  match = {
    "{" => "}",
    "(" => ")",
    "[" => "]",
  }
  s.each_char do |char|
    if match.key?(char)
      paren << char
    else
      return false if paren.empty?
      return false if match[paren.pop] != char
    end
  end
  paren.empty?
end

s = gets
puts is_valid(s)
