# https://atcoder.jp/contests/abc012/tasks/abc012_2

# B - 入浴時間

# 問題文
# 高橋君は、お風呂で湯船に浸かった秒数を数える習慣があります。

# 今日は、高橋君は湯船で 
# N 秒まで数えました。

# しかし、秒だと解りにくいので、何時間何分何秒、という形に直したいです。

# 秒数 
# N が与えられるので、 
# hh:mm:ss の形式に変換しなさい。

#==============================以下回答=============================

n=gets.to_i
h,m=n.divmod(3600)
m,s=m.divmod(60)

puts format("%02d:%02d:%02d", h,m,s)