=begin
- price[i]がi日目の株価である配列priceが与えられる
- ある銘柄を買う日を1日選び、その銘柄を売る日を将来の別の日に選ぶことで利益を最大化したい
- この取引で得られる最大の利益を返す
- 利益が得られない場合は0を返す
- Example1
```
Input: prices = [7,1,5,3,6,4]
Output: 5
```
- Example2
```
Input: prices = [7,6,4,3,1]
Output: 0
```
=end

def max_profit(prices)
  max_profit = 0
  min = prices.first
  prices.each do |price|
    min = price if price < min
    profit = price - min
    max_profit = profit if profit > max_profit
  end
  max_profit
end

prices = gets.split(' ').map(&:to_i)
puts max_profit(prices)
