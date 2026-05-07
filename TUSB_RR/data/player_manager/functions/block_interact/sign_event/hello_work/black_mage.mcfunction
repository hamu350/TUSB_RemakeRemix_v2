#> tusb_remake:sign_event/hello_work/black_mage
# 黒魔導士の説明
### Copyright © 2022 赤石愛

particle minecraft:witch ~ ~ ~ 1 1 1 0 100 force
playsound minecraft:entity.ghast.shoot master @a[distance=..10] ~ ~ ~ 0.5 2 0
tellraw @s [{"text":""},{"text":"[黒魔導士]\n","bold":true},{"text":" 強力な"},{"text":"攻撃魔法","color":"dark_aqua","bold":true},{"text":"をはじめ、様々な黒魔法を扱う属性操作のエキスパート。"}]
