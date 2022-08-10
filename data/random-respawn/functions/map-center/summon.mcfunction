execute if score $Y.0 F-Temp matches 0 run summon minecraft:armor_stand ~ -70 ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center"]}
execute if score $Y.0 F-Temp matches 1 run summon minecraft:armor_stand ~ -3 ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center"]}
forceload add ~ ~
scoreboard players set $loop F-MapCenter 4
scoreboard players operation @e[distance=..100,tag=map-center] F-GameCount = $gm F-Temp