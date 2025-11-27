#> tusb_remake:talk_event/augur/trigger/tell
# 占い師との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: TLE追加の予感に対応

# origin
execute if score @s EventRank matches ..9 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。あなたから伸びる幾筋かの光が見えます。\n日除けが災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 10..19 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。煙立ち込める泉が見えます。\n幸運は自ずと訪れるでしょう。"}	 
execute if score @s EventRank matches 20..29 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。揺らめき動く蜃気楼が見えます。\n明滅する光が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 30..39 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。喜ぶ村人が見えます。\n飼料が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 40..49 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。手招くツルハシが見えます。\nあなたが災いから逃れられますように…。"}	 
execute if score @s EventRank matches 50..59 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。立ち昇る白煙が見えます。\n刃物が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 60..69 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。逃げ惑う炎が見えます。\n柵が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 70..79 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。舞い落ちる天使の羽が見えます。\n平らな土地が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 80..89 if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。彷徨える騎士が見えます。\n薬が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 90.. if score @s ChooseEvent matches 1 run tellraw @s {"text":"[占い師] むむッ…。風船が見えます。\n足場が幸運を招き入れるカギとなるでしょう。"}


# TLEようも追加せねばならぬ

# TLE
execute if score @s EventRank matches ..9 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。何やら爆音が微かに聞こえてきます。\n耳栓を用意しておくと良いでしょう。"}	 
execute if score @s EventRank matches 10..19 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。見たことがない生き物が見えます。\n迎い入れる準備をしておいたほうが良いかもしれません。"}	 
execute if score @s EventRank matches 20..29 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。何やら気分が悪そうですね。\nソーシャルディスタンスを保ち安静にしておきましょう。"}	 
execute if score @s EventRank matches 30..39 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。地獄からの使者が見えます。\n光り物が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 40..49 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。膨大なエネルギーを感じます。\nあなたが災いから逃れられますように…。"}	 
execute if score @s EventRank matches 50..59 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。怪しい赤いブロックが見えます。\n破壊の準備をしておくと良いでしょう。"}	 
execute if score @s EventRank matches 60..69 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。微かに小さな光が見えます。\n経験をもたらすかどうかはあなた次第でしょう。"}	 
execute if score @s EventRank matches 70..79 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。何者かがあなたを襲いに来るでしょう。\n敵に立ち向かう勇気を持つときっと勝てるはず。"}	 
execute if score @s EventRank matches 80..89 if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。目が見えないなにかがあなたのことを注視しているようです。\n音を立てないことが災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 90.. if score @s ChooseEvent matches 2 run tellraw @s {"text":"[占い師] むむッ…。この予感はまだ実装されていないようです。\n注意する必要はないでしょう。"}