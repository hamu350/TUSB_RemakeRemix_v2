#> time_limit:boss/newstar_king/skill/acceralation/schedule_result

# アクセラレーションスキル
# 爆発+雷どかーん


# 爆発はクリーパー?
# 雷はえんちちの方じゃなくて召喚してコマンドでダメージ与える?
# gamerule mobGriefing false
# execute in the_end as @e[type=zombie,tag=NewStar_King] run summon creeper ~ ~ ~ {ExplosionRadius:7b,ignited:true,Fuse:0} 
# scheduleだといけるｗｗｗｗｗｗｗ
# 半径8でいいかもね。ちょうどいい感じな気がする
# まあ一旦エンティティの雷でもいいかもしれん
execute at @a[gamemode=!spectator,tag=Boss_Fighting] run summon marker ~ ~ ~ {Tags:["acceralation","BossEnemy"]}

# 演出
execute at @e[type=marker,tag=acceralation] run function time_limit:boss/newstar_king/skill/acceralation/particle


# 上のやつちょっとの猶予時間の後にどーんってやってもいいよなぁ
# 起点マーカーだしてschedule,その後範囲指定してkillかねー

schedule function time_limit:boss/newstar_king/skill/acceralation/detect 10t
