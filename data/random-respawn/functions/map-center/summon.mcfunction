summon minecraft:armor_stand ~ -70 ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center"]}
forceload add ~ ~
scoreboard players operation @e[distance=..100,tag=map-center] F-GameCount = $gm F-Temp