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
# レシーバ要素.hogeの左側
# これが最初の導入でわかりやすい
# https://qiita.com/you8/items/e5f5c27cfed60a23fa75

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

def max(a, b)
  if a > b
    a
  else
    b
  end
end

max(10, 5) # 10 jsのmapみたいにreturnを返さなくていい。がif文でそれが起こるのは慣れない感覚

def myloop(my_array)
  my_array.each do |i|
    puts i
  end
end

myloop([1, 2, 3, 4, 5])

# 要確認
# ブロック付き関数の呼び出し　直感的にわかりにくいがコールバック関数のようなもの
# 　Jsで言うところの引数に関数を渡すような感じでyieldを使う
def say_hello
  puts 'Hello, world!'
  yield if block_given?
end

say_hello do
  puts 'This is a block!'
end

def say_hello_arguments
  puts 'Hello, world!'
  yield('Alice', 'May') if block_given?
  yield('Bob', 'Smith') if block_given?
end

say_hello_arguments do |firstname, lastname| # 引数
  puts "This is a block for #{firstname} #{lastname}!"
  puts "Nice to meet you, #{firstname} #{lastname}!"
end

# 定義的には同じ、Rubyのブロッック付き組み込み関数
new_array = [1, 2, 3].map do |num|
  num * 2
end

puts new_array

#   function sayHello(callback: () => void): void {
#   console.log("Hello, world!");
#   callback();
# }
#
# sayHello(() => {
#   console.log("This is a block!");
# });
