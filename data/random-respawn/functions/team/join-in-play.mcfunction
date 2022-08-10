execute if score $timer F-Timer matches 0.. run team join Spec @s
execute if score $timer F-Timer matches 0.. if score &spec-gm F-Temp matches 1 run gamemode creative @s
execute if score $timer F-Timer matches 0.. if score &spec-gm F-Temp matches 2 run gamemode spectator @s
execute if score $timer F-Timer matches 0.. at @e[tag=map-center,limit=1] run tp @s @p[team=Player]
execute if score $timer F-Timer matches 0.. at @s run playsound minecraft:entity.guardian.death master @s ~ ~ ~ 1