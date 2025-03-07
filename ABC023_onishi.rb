# 問題文
# 高橋君は趣味でアクセサリーを作っている。

# アクセサリーは a, b, c のいずれか 
# 1 文字が書かれたブロックを横 
# 1 列に並べることで作成できる。

# 高橋君は、以下の手順でアクセサリーの作成を行う：

# 手順 
# 0 : 高橋君は b 
# 1 文字からなるアクセサリーを作成する。
# 以降の手順では、既にあるアクセサリーの両端にブロックを 
# 1 つずつ追加することでアクセサリーを改造する。

# 手順 
# 3n+1(n≧0) : 手順 
# 3n で完成したアクセサリーの左端に文字 a が書かれたブロックを、右端に文字 c が書かれたブロックを付け足す。
# 手順 
# 3n+2(n≧0) : 手順 
# 3n+1 で完成したアクセサリーの左端に文字 c が書かれたブロックを、右端に文字 a が書かれたブロックを付け足す。
# 手順 
# 3n(n≧1) : 手順 
# 3n−1 で完成したアクセサリーの左端に文字 b が書かれたブロックを、右端に文字 b が書かれたブロックを付け足す。
# 高橋君はアクセサリーの作成を好きな手順の直後に終了することができる。終了した場合、アクセサリーには、アクセサリーを構成するブロックに書かれた文字を左から右に読んだものと同じ名前が付けられる。

# 例えば、手順 
# 0, 
# 1, 
# 2, 
# 3 それぞれの直後にアクセサリーの作成を終了した場合、アクセサリーの名前は順に、b, abc, cabca, bcabcab となる。

# 文字列 
# S が与えられるので、その文字列がアクセサリーの名前として考えられるかを判定し、考えられるなら何番目の手順の直後にアクセサリーの作成を終了したのかを求めよ。

# #==============================以下回答=============================

n=gets.to_i
s=gets.chomp

num=(n-1)/2
name="b"

for i in 1..num
  if i%3==1
    name= "a"+name+"c"
  elsif i%3==2
    name= "c"+name+"a"
  else
    name= "b"+name+"b"
  end
end
if s==name
  puts num
else
  puts "-1"
end