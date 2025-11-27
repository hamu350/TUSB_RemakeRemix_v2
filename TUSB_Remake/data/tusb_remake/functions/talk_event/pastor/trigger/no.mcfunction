#> tusb_remake:talk_event/pastor/trigger/no
# 牧師との会話処理(御存知でない)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players reset @s PastorFlag

### 解説タイム
### 順番(サイクル)をスコアボードなし１コマンドでするには？
### 1 -> 2 -> ... -> 6 -> 7 -> 1 -> 2 -> ... ->
execute store result storage tusb_remake: pastor_tip int -1 store result storage tusb_remake: {pastor_tip:8}.pastor_tip int -0.125 run data get storage tusb_remake: pastor_tip -1.0000000001
### 0だったら1にしてあげる
execute if data storage tusb_remake: {pastor_tip:0} run data modify storage tusb_remake: pastor_tip set value 1

execute if data storage tusb_remake: {pastor_tip:1} run tellraw @s {"text":"[牧師] サバイバルエリアではベッドで寝ると元気になれます。\nアドベンチャーエリアではとても寝てはいられませんが…"}
execute if data storage tusb_remake: {pastor_tip:2} run tellraw @s {"text":"[牧師] ネザー火山内にある迷宮には多くの宝が眠っているとの噂ですが、\n熱さで何人も寄せ付けません。"}
execute if data storage tusb_remake: {pastor_tip:3} run tellraw @s {"text":"[牧師] MPの表示が溢れた時は、\nスキル設定所にある黒い電話ボックスを使うと良いでしょう。"}
execute if data storage tusb_remake: {pastor_tip:4} run tellraw @s {"text":"[牧師] 土と砂利で荒れた土をクラフトできますが、\n荒れた土は一度耕すことで普通の土に変えられます。"}
execute if data storage tusb_remake: {pastor_tip:5} run tellraw @s {"text":"[牧師] ポーションの中には火薬を混ぜると\n効果が消えてしまうものもあります。"}
execute if data storage tusb_remake: {pastor_tip:6} run tellraw @s {"text":"[牧師] 干草の俵はクラフトすることで小麦に戻せます。"}
execute if data storage tusb_remake: {pastor_tip:7} run tellraw @s {"text":"[牧師] もう長い間夜が続いていますが、明けない夜はないといいます。お月様の機嫌が良くなれば、夜明けはきっと来るでしょう。"}
