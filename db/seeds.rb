themes = [
  Theme.create!(title: "最近学んだこと"),
  Theme.create!(title: "今日の朝ごはん"),
  Theme.create!(title: "好きな市販のお菓子"),
  Theme.create!(title: "気になっている技術"),
  Theme.create!(title: "誕生日に欲しいもの"),
]

Post.create!([
               # 最近学んだこと
               { theme: themes[0], content: "git rebaseの使い方をやっと理解できた！" },
               { theme: themes[0], content: "Dockerコンテナのネットワーク設定について学んだ。" },
               { theme: themes[0], content: "毎日こつこつ日報を書くと、意外と振り返りに便利だと気づいた。" },

               # 今日の朝ごはん
               { theme: themes[1], content: "バタートーストと目玉焼き、あとブラックコーヒー。" },
               { theme: themes[1], content: "コンビニのおにぎり（ツナマヨ）と味噌汁！簡単だけど満足感あり。" },
               { theme: themes[1], content: "昨日の残りのカレーをリメイクしてカレートーストにした。" },

               # 好きな市販のお菓子
               { theme: themes[2], content: "チョコパイは昔から変わらず好きなおやつ。" },
               { theme: themes[2], content: "じゃがりこのサラダ味は無限に食べられる。" },
               { theme: themes[2], content: "ブラックサンダー、コスパ最強だと思ってる。" },

               # 気になっている技術
               { theme: themes[3], content: "最近はRustが気になってる。安全性と高速性が魅力。" },
               { theme: themes[3], content: "LLMを使った業務効率化、どこまでできるか模索中。" },
               { theme: themes[3], content: "BunっていうJSランタイム、速さが売りらしいので触ってみたい。" },

               # 誕生日に欲しいもの
               { theme: themes[4], content: "ちょっと良いマウスが欲しい！長時間使っても疲れないやつ。" },
               { theme: themes[4], content: "Kindle Paperwhiteが気になってる。本棚がいっぱいだから電子化したい。" },
               { theme: themes[4], content: "美味しいコーヒー豆のセットがもらえたら嬉しい。" },
             ])
