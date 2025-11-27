#> debug:set_spawner/aura
tag @s remove this

# AECを召喚して、/rideで乗せます
    summon area_effect_cloud 0.0 0.0 0.0 {Radius:7.0f,Effects:[],Particle:"portal",Tags:["TypeChecked","SystemEntity","this"],ReapplicationDelay:30,Duration:2,CustomName:'"新世代のスポナーオーラ"'}
    ride @e[type=area_effect_cloud,tag=this,limit=1] mount @s
    
tag @s add AuraSpawner