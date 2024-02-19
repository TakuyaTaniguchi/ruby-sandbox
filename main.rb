a = 10
b = 3 * a + 2
printf("%d %d\n", a, b)

array = [1, 2, 3, 4, 5]

array.each do |i|
  puts i
end

hash = { a: 1, b: 2, c: 3 }

hash.each do |k, v|
  puts "#{k}: #{v}"
end

one, *second, last = array

puts one, second, last

# https://docs.ruby-lang.org/ja/latest/class/Array.html#I_COUNT
ary = %w[aaa bbbb ccc ddd eee aaa]
puts ary.count
puts ary.count('aaa') # aaaの数をカウント

# メモ
# レシーバ要素とは返り値のこと

str1 = 'Taro'
str2 = str1

puts str1, str2

str1 = 'Bob'

puts str1, str2

# Jsだとちょっと面倒な処理をrubyだと簡単に書ける？
from = 5
to = 10
sum = 0
for i in from..to
  sum += i
end
puts sum

# Fix each
from = 5
to = 10
sum = 0
(from..to).each do |i|
  sum += i
end
puts sum
