#> time_limit:tick/boss_tick

# ボス系統のtick処理全部

# ボスHPstore
execute in the_end as @e[type=zombie,tag=NewStar_King] if entity @s run function time_limit:boss/newstar_king/calculate_hp/check_hp

# ボストラップ
execute as @e[type=armor_stand,tag=rollback_trap] if entity @s at @s run function time_limit:boss/newstar_king/skill/rollback_trap/check_trap

# 両方の王が同時に死んだ場合
# やっぱbossspawnしたスコアないと判断できなくね
# bossspawnedが1で且つ両方のえんちちがいない場合
# でも深淵王キルされる要員がkillcmd or ロストしかないからええか、、

# 深淵王が即死経過なんかで先に死んでしまった場合

# スコアのHPが0なら新星キル処理(深淵王はキルされてないなら)
execute if score Health Boss_Health matches ..0 if score Flag FightingBoss matches 1 if entity @e[type=zombie,tag=Abyss_King,nbt={Invulnerable:1b}] run function time_limit:boss/newstar_king/boss_kill
# スコア上の体力は1以上あって且つ戦ってるプレイヤーがいてnewstarkingがいないなら実行(ワンパンされた時の対処みたいなもん)
execute if score Health Boss_Health matches 1.. if score Flag FightingBoss matches 1 if entity @e[type=zombie,tag=Abyss_King,nbt={Invulnerable:1b}] unless entity @e[type=zombie,tag=NewStar_King] run function time_limit:boss/newstar_king/boss_kill

# これ深淵がロストで死んだときに取り返せなくね
# まあ一旦アイテムを消すからいいか


# 死んだ後毎tick実行されてるから見えてないよーん
# invvついてるときだけにしなさい
# 王が先にキルされたらだるくね？ｗ
# 王にダメージを与える方法がエフェクトだけなのでうーんとなっている

# ボス突入判定
# distance..20は負荷対策、distance=..20入れてもほぼ検知範囲変わってないんじゃないかな(強いて言うならxz軸方向が球範囲入ってないところがーくらい)、yはそもそも検知範囲を狭めないといけない(-方向に魔弾部屋あるのが悪い)
execute in the_end at @e[type=armor_stand,tag=Boss_Enter] as @a[distance=..20] positioned ~10 ~10 ~10 if entity @s[dx=-27,dy=-20,dz=-20] run function time_limit:boss/newstar_king/enter

# ボスフィールド場外プレイヤーを連れ戻す
execute in the_end at @e[type=armor_stand,tag=Boss_Marker] as @a[distance=45..,tag=Boss_Fighting] run function time_limit:boss/newstar_king/out_field

# ボス召喚
execute in the_end as @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{Boss:1b}}}] if entity @s at @s run function time_limit:boss/newstar_king/makeup/

# ボス戦闘tag剥奪
# そもそもasがディメンション全体を探索するから意味がないので上の方は意味がない
# execute in overworld as @a[tag=Boss_Fighting] if entity @s run tag @s remove Boss_Fighting
# ここpredicateにすれば=!でendできるくね
execute as @a[tag=Boss_Fighting,nbt={Dimension:"minecraft:overworld"}] run tag @s remove Boss_Fighting

# ボス戦闘スコアがあるのにタグ付きが中にいなかったら

execute if score Flag FightingBoss matches 1 as @e[type=armor_stand,tag=Boss_Enter] at @s unless entity @a[distance=45.25..,tag=Boss_Fighting] run function time_limit:boss/newstar_king/no_player

# ボス無敵ならparticle
execute in the_end as @e[type=zombie,tag=NewStar_King,nbt={Invulnerable:true}] if entity @s at @s run particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a

# 深淵ノ王 killされたら
execute if score Flag FightingBoss matches 1 in the_end if entity @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{Shinen:1b}}}] run function time_limit:boss/newstar_king/all_killed