# No Sleep

Limit the Conditions under which the Respawn Point can be Set.  
リスポーン地点を設定できる状況を制限するデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.19

## 一緒に入れてね / Dependencies

Oh! My Dat!(<https://github.com/Ai-Akaishi/OhMyDat>)  
Anywhere Function(<https://github.com/Ai-Akaishi/AnywhereFunction>)  
Anywhere Teleport(<https://github.com/Ai-Akaishi/AnywhereTeleport>)  

## 使い方 / How To Use

### 抑制する状況の登録 / Register suppressive conditions

ベッドやリスポーンアンカーでリスポーン地点を設定させたくない状況を登録します  
Enumerate to register conditions in which you do not want to use the beds or respawn anchors to set the respawn point.  

```nim
> no_sleep/tags/functions/conditions.json  
{  
    "values": [  
        "your_datapack:no_sleep"  
    ]  
}  
  
> your_datapack/functions/no_sleep.mcfunction  
# アドベンチャーモードだったらダメ / Not if they are in adventure mode.
execute if entity @s[gamemode=adventure]
# 通常世界以外だったらダメ / Not if they are in overworld.
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}]
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
