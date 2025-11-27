#> tusb_remake:sign_event/hello_work/white_mage
# 白魔導士の説明
### Copyright © 2022 赤石愛

particle minecraft:instant_effect ~ ~ ~ 1 1 1 0 100 force
playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.5 2 0
tellraw @s [{"text":""},{"text":"[白魔導士]\n","bold":true},{"text":" 攻撃は不得意だが、さまざまな"},{"text":"回復スキルを扱う","color":"dark_aqua","bold":true},{"text":"パーティの支え手。"}]
