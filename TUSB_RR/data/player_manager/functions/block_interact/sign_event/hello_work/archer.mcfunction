#> tusb_remake:sign_event/hello_work/archer
# 狩人の説明
### Copyright © 2022 赤石愛

particle minecraft:crit ~ ~ ~ 1 1 1 0 100 force
playsound minecraft:entity.arrow.hit master @a[distance=..10] ~ ~ ~ 0.5 2 0
tellraw @s [{"text":""},{"text":"[狩人]\n","bold":true},{"text":" 弓を用いた遠距離攻撃や"},{"text":"敵の能力を下げる罠","color":"dark_aqua","bold":true},{"text":"など、アウトレンジ戦法を得意とするハンター。"}]
