# https://atcoder.jp/contests/abc020/tasks/abc020_b

# B - 足し算

# 問題文
# 2 つの正整数 
# A, 
# B が与えられます。 
# A の十進表記の右に 
# B の十進表記（先頭に 
# 0 を付けない）を連結して得られる整数を 
# 2 倍したものを出力してください。

#==============================以下回答=============================

a,b = gets.split.map(&:to_i)
puts (a*(10**(b.to_s.length))+b)*2