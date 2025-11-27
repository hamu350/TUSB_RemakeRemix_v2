#> time_limit:boss/newstar_king/skill/time_realization/version/1.17/summon/coal

# 石炭鉱石を召喚

# 召喚された石炭はダメージを受けると周囲を燃やす

# 前回のtickと比べてた体力が減っているなら周囲を燃やすというか延焼ダメを与える



# 1.17
summon zombie ~ ~ ~ {NoAI:1b,Health:500f,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:coal_ore",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.armor",Base:20}]}

# 1.18
# 上のoreをdeepslateに
