#> tusb_remake:talk_event/augur/trigger/tell
# 占い師との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score @s EventRank matches ..9 run tellraw @s {"text":"[占い師] むむッ…。あなたから伸びる幾筋かの光が見えます。\n日除けが災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 10..19 run tellraw @s {"text":"[占い師] むむッ…。煙立ち込める泉が見えます。\n幸運は自ずと訪れるでしょう。"}	 
execute if score @s EventRank matches 20..29 run tellraw @s {"text":"[占い師] むむッ…。揺らめき動く蜃気楼が見えます。\n明滅する光が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 30..39 run tellraw @s {"text":"[占い師] むむッ…。喜ぶ村人が見えます。\n飼料が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 40..49 run tellraw @s {"text":"[占い師] むむッ…。手招くツルハシが見えます。\nあなたが災いから逃れられますように…。"}	 
execute if score @s EventRank matches 50..59 run tellraw @s {"text":"[占い師] むむッ…。立ち昇る白煙が見えます。\n刃物が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 60..69 run tellraw @s {"text":"[占い師] むむッ…。逃げ惑う炎が見えます。\n柵が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 70..79 run tellraw @s {"text":"[占い師] むむッ…。舞い落ちる天使の羽が見えます。\n平らな土地が幸運を招き入れるカギとなるでしょう。"}	 
execute if score @s EventRank matches 80..89 run tellraw @s {"text":"[占い師] むむッ…。彷徨える騎士が見えます。\n薬が災いを避けるカギとなるでしょう。"}	 
execute if score @s EventRank matches 90.. run tellraw @s {"text":"[占い師] むむッ…。風船が見えます。\n足場が幸運を招き入れるカギとなるでしょう。"}
