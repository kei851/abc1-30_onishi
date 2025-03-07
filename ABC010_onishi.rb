# https://atcoder.jp/contests/abc010/tasks/abc010_2

# B - 花占い

# 問題文
# 高橋君の秘書のなぎさちゃんは、高橋君が大好きです。つまり、高橋君もなぎさちゃんの事が大好きであるに違いありません。 そのことを確認するために、庭に咲いている花で、花占いをすることにしました。

# 「好き」、「嫌い」、「好き」、「嫌い」、「好き」、「嫌い」……。

# おかしいです。高橋君はなぎさちゃんの事が好きであるはずなのに、花占いの結果は「嫌い」でした。 これは、花が悪いに違いありません。

# なぎさちゃんは、使用人達に、花占いの結果が「嫌い」にならないように、花びらを毟るよう命じました。

# なぎさちゃんの花占いは、
# 2つのパターンがあります。 一つは、「好き」「嫌い」を交互に言いながら、花びらを 
# 1 枚ずつ毟っていくパターンです。 もう一つは、「好き」「嫌い」「大好き」の 
# 3 つを繰り返しながら、花びらを
# 1枚ずつ毟っていくパターンです。

# どちらのパターンにおいても、最後に言った言葉が、花占いの結果となります。

# なぎさちゃんの使用人であるあなたは、なぎさちゃんがどちらのパターンで花占いをしたときも、「嫌い」にならないように、 花びらを事前に毟ってあげる必要があります。

# 庭に咲いている花の数と、その花びらの枚数が与えられるので、花びらを毟る必要のある枚数を出力してください。

#==============================以下回答=============================


n=gets.to_i
num = gets.split.map(&:to_i)
num_remove=0

for i in 0..n-1 do
  div6 = num[i]%6
  if div6 == 0 then
    num_remove += 3
  elsif div6 == 2 || div6 ==4 then
    num_remove += 1
  elsif div6 == 5 then
    num_remove += 2
  end
end
puts num_remove