#> debug:load

scoreboard objectives add DebugId dummy

execute unless data storage debug: Debug.Mode run data modify storage debug: Debug.Mode set value 1s
