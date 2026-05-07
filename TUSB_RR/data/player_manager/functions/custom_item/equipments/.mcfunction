#> player_manager:custom_item/equipments/
#
# 装備の効果
#
# @within function core:clock/main

# フルセット効果
    # ブル・ギアッチョ
        execute if predicate player_manager:equipment/full_set/giattyo run function player_manager:custom_item/equipments/full_set/giattyo

    # 煉獄魔装
        execute if predicate player_manager:equipment/full_set/masou run function player_manager:custom_item/equipments/full_set/masou

    # 黄昏
        execute if predicate player_manager:equipment/full_set/twilight run function player_manager:custom_item/equipments/full_set/twilight

    # 紡がれし星光
        execute if predicate player_manager:equipment/full_set/tumugi run function player_manager:custom_item/equipments/full_set/tumugi


# エリトラ
    # 虹
        execute if predicate player_manager:equipment/elytra/niji run function player_manager:custom_item/equipments/elytra/niji

    # 混沌
        execute if predicate player_manager:equipment/elytra/konton run function player_manager:custom_item/equipments/elytra/konton

    # 紡がれし星光
        execute if predicate player_manager:equipment/elytra/tumugi_fry run function player_manager:custom_item/equipments/elytra/tumugi_fry

# オブハンド
    # 災禍
        execute if predicate player_manager:equipment/offhand/saika run function player_manager:custom_item/equipments/offhand/saika
