#> time_limit:boss/newstar_king/skill/time_realization/

# タイム・リアリゼーション
# 形態ごとによってスキル内容変わります
# 回復とかしてHP割合が変わっても形態変わってたらもともとの割合のスキルを参照にするよ

# ここにexecute at @a[tag=Boss_Fighting] をつけてもいいかも、、、？

me はタイム・リアリゼーションを唱えた！

# 1.10(なんもない) 9~10割
execute if score $percent_10 Boss_x matches 9.. run function time_limit:boss/newstar_king/skill/time_realization/version/1_10
# 1.11(エヴォーカーの牙攻撃)8~9割
execute if score $percent_10 Boss_x matches 8 run function time_limit:boss/newstar_king/skill/time_realization/version/1_11
# 1.12(色AEC) 7~8割
execute if score $percent_10 Boss_x matches 7 run function time_limit:boss/newstar_king/skill/time_realization/version/1_12
# 1.13(空飛ぶコンジット) 6~7割
execute if score $percent_10 Boss_x matches 6 run function time_limit:boss/newstar_king/skill/time_realization/version/1_13
# 1.14(強化襲撃) 5~6割
# 一旦ここだけは予感のためにasをつける
# 今後はここだか他の場所にasをつければいい感じになるのではないかという推察をだな
execute if score $percent_10 Boss_x matches 5 run execute as @a[tag=Boss_Fighting] run function time_limit:boss/newstar_king/skill/time_realization/version/1.14/
# 1.15(ハチミサイル) 4~5割
execute if score $percent_10 Boss_x matches 4 run function time_limit:boss/newstar_king/skill/time_realization/version/1_15
# 1.16(強化ピグリン) 3~4割
execute if score $percent_10 Boss_x matches 3 run function time_limit:boss/newstar_king/skill/time_realization/version/1_16
# 1.17(上から鍾乳石+時送りの盾強化値0+採掘速度低下) 2~3割
execute if score $percent_10 Boss_x matches 2 run function time_limit:boss/newstar_king/skill/time_realization/version/1_17
# 1.18(MP見えなくなる、浮遊付与、鍾乳石) 1~2割
execute if score $percent_10 Boss_x matches 1 run function time_limit:boss/newstar_king/skill/time_realization/version/1_18
# 1.19(ウォーデン) ~1割
execute if score $percent_10 Boss_x matches 0 run function time_limit:boss/newstar_king/skill/time_realization/version/1_19