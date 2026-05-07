#> skill:trigger/bow/crossbow_multishot
# クロスボウを使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クロスボウ用に内容を変更

### エンチェイス
# エンチェイスは一度だけ適応なので真ん中の矢に適応したい関係上無視させる
# execute as @s[tag=EnChase] run function skill:job_skill/archer/enchase/shoot/
execute as @s[scores={CurrentMode=3200..3209}] run function skill:job_skill/archer/stakes_fire/shoot
execute as @s[scores={CurrentMode=3210..3219}] run function skill:job_skill/archer/chain_arrow/shoot
execute as @s[scores={CurrentMode=3230..3239}] run function skill:job_skill/archer/blast_shot/shoot
execute as @s[scores={CurrentMode=3240..3249}] run function skill:job_skill/archer/bird_strike/shoot
execute as @s[scores={CurrentMode=3250..3259}] run function skill:job_skill/archer/ghast_cannon/shoot
execute as @s[scores={CurrentMode=3260..3269}] run function skill:job_skill/archer/fatal_shot/shoot
execute as @s[scores={CurrentMode=3270..3279}] run function skill:job_skill/archer/madan/shoot
execute as @s[scores={CurrentMode=3280..3289}] run function skill:job_skill/archer/e_su/shoot