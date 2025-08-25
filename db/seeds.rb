themes = [ "最近学んだこと", "今日の朝ごはん", "好きな市販のお菓子", "気になっている技術", "誕生日に欲しいもの" ]

themes.each { |theme| Theme.create!(title: theme) }
