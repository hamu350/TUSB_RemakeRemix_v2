# Anywhere Teleport

This Datapack allows you to teleport to a specified location in storage.  
ストレージで指定した場所にテレポートできるデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.19

## 一緒に入れてね / Dependencies

Anywhere Function(<https://github.com/Ai-Akaishi/AnywhereFunction>)  

## 使い方 / How To Use

### 呼び出し方 / How to call

場所を指定して、function #anywhere:tpを実行  
Specify the location and call the function.  

```nim
次の記述は execute in minecraft:the_nether positioned 1 2 3 rotated 10 20 run tp @s ~ ~ ~ ~ ~ と同じ
  
data modify storage anywhere: at set value {Pos:[1d,2d,3d],Rotation:[10f,20f],Dimension:"minecraft:the_nether"}  
function #anywhere:tp
```

## 提供している機能 / Functions provided

- #anywhere:tp  
テレポートします。
- #anywhere:spawnpoint  
リスポーン地点に設定します。

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
