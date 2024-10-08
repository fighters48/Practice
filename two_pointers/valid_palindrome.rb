=begin
- 標準入力で与えられた文字列が回文であれば`true`を、そうでなければ`false`を返す
- 大文字と小文字は区別されず、英数字以外の文字は無視する
- Example1
```
Input: Was it a car or a cat I saw?
Output: true
```
- Example2
```
Input: tab a cat
Output: false
```
=end

def is_palindrome(s)
  str = s.downcase.chars.select { |char| /[a-zA-Z0-9]/.match?(char) }.join
  idx_start = 0
  idx_end = str.length - 1
  while idx_start < idx_end
    return false if str[idx_start] != str[idx_end]

    idx_start += 1
    idx_end -= 1
  end
  true
end
  
# def is_palindrome(s)
#   idx_start = 0
#   idx_end = s.length - 1
#   while idx_start < idx_end
#     if !/[a-zA-Z0-9]/.match?(s[idx_start])
#       idx_start += 1
#     elsif !/[a-zA-Z0-9]/.match?(s[idx_end])
#       idx_end -= 1
#     else
#       return false if s[idx_start].downcase != s[idx_end].downcase

#       idx_start += 1
#       idx_end -= 1
#     end
#   end
#   true
# end
  
# def is_palindrome(s)
#   str = s.downcase.chars.select { |char| /[a-zA-Z0-9]/.match?(char) }
#   str == str.reverse
# end

s = gets
puts is_palindrome(s)
