#> tusb_remake:sign_event/hello_work/ninja
# 忍者の説明
### Copyright © 2022 赤石愛

particle minecraft:explosion ~ ~ ~ 1 1 1 0 100 force
playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..10] ~ ~ ~ 1 2 0
tellraw @s [{"text":""},{"text":"[忍者]\n","bold":true},{"text":" 常人の３倍の脚力と多様なｼﾞﾂで悪環境にも自在に適応、"},{"text":"高い攻撃力","color":"dark_aqua","bold":true},{"text":"で敵を仕留める暗殺者。"}]
