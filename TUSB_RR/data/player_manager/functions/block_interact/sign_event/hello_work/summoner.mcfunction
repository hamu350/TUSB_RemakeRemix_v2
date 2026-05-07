#> tusb_remake:sign_event/hello_work/summoner
# 召喚士の説明
### Copyright © 2022 赤石愛

particle minecraft:enchant ~ ~1.25 ~ 0 0 0 5 200 force
playsound minecraft:block.portal.trigger master @a[distance=..10] ~ ~ ~ 0.5 2 0
tellraw @s [{"text":""},{"text":"[召喚士]\n","bold":true},{"text":" 生物や物質まで"},{"text":"様々なものを呼び出して","color":"dark_aqua","bold":true},{"text":"攻撃や支援を行う、召還魔法のエキスパート。"}]
