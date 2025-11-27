#> time_limit:boss/newstar_king/skill/summon_blackhole/

# サモン:ブラックホール
# ブラックホール出して吸い込むで
# 大ダメージ+移動速度低下

me はサモン・ブラックホールを唱えた！
# ブラックホールの位置どうしよう、ボスの位置でいいかね。
# 
# 予備動作あればボス座標でもいいんじゃない、下手したらワープするせいで変なところに置かれそうだけども
# summon marker?
# 出した後にloop?
# execute at @a run particle minecraft:dragon_breath ~ ~3 ~ 0.5 0.5 0.5 0.01 25 force
# このパーティクルいいかも
# markerよんでparticleだして経過時間score出して、経過時間が立つまでmarker付近にいるプレイヤーを吸い込む
# で、markerの周囲にいるプレイヤーに対してダメージとかエフェクトとかね
# エフェクトは暗闇盲目鈍足かな
summon marker ~ ~ ~ {Tags:["Blackhole","BossEnemy"]}
playsound block.end_portal.spawn block @a[distance=..100] ~ ~ ~ 1 1
# loop join
function time_limit:boss/newstar_king/skill/summon_blackhole/loop