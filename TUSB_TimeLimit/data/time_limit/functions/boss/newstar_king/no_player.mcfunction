#> time_limit:boss/newstar_king/no_player

# ボスエリアにはいったのにプレイヤーがいない=死んだときの処理

# フラグ系スコアやHPをすべてリセットする

# 

# そもそもプレイヤーが死んだときにkeepinvをonにしてあげないとダメだこれ

# Bossenterスコアリセット
scoreboard players set First Enter_Boss 0

# 深淵の王のルート変える必要あるかこれ

data modify entity @e[limit=1] DeathLootTable set value "time_limit:noloot/no_loot"

# 中にいるアマスタ、プレイヤー以外のentityをkill
# ボスに関連するentityにboss_enemyをつけよう(システム以外)
# 誤爆が怖いので一応player以外に
kill @e[tag=BossEnemy,type=!player]

# HPスコアを再度戻す
scoreboard players set $30720 Boss_x 30720

# itemもクリア
# 1tick後か?