=begin
- 重複を含む値のストリームから、k番目に大きい整数を求めるクラスを設計する
- 例えば、[1, 2, 3, 3] から 2番目に大きいのは3になる
- 以下のメソッドを実装すること
  - `constructor(int k, int[] nums)`
  整数kと整数のストリームnumsを与えてオブジェクトを初期化するメソッド
  - `int add(int val)`
  整数valをストリームに追加し、ストリームの中でk番目に大きい整数を返すメソッド
- Example1
```
Input:
["KthLargest", [3, [1, 2, 3, 3]], "add", [3], "add", [5], "add", [6], "add", [7], "add", [8]]

Output:
[null, 3, 3, 3, 5, 6]

Explanation:
KthLargest kthLargest = new KthLargest(3, [1, 2, 3, 3]);
kthLargest.add(3);   // return 3
kthLargest.add(5);   // return 3
kthLargest.add(6);   // return 3
kthLargest.add(7);   // return 5
kthLargest.add(8);   // return 6
```
=end

# https://github.com/florian/rb_heap
require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rb_heap'
end

class KthLargest
  def initialize(k, nums)
    @k = k
    @heap = Heap.new
    nums.each { |num| @heap << num }
    @heap.pop until @heap.size <= @k
  end

  def add(val)
    @heap << val
    @heap.pop until @heap.size <= @k
    @heap.peak
  end
end

kthLargest = KthLargest.new(3, [1, 2, 3, 3])
puts kthLargest.add(3)
puts kthLargest.add(5)
puts kthLargest.add(6)
puts kthLargest.add(7)
puts kthLargest.add(8)
