execute as @s[predicate=!random-respawn:nether] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center"]}
execute as @s[predicate=random-respawn:nether] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center","F-InNether"]}
forceload add ~ ~
scoreboard players set $loop F-MapCenter 4