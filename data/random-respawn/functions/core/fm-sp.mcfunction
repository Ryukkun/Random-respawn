# Load by random-respawn:core/main
# @s = none
#-----------------------------------

# 毎tick +1
scoreboard players add $StopW F-Timer 1

# calclate
scoreboard players operation $StopW20 F-Timer = $StopW F-Timer
scoreboard players operation $StopW20 F-Timer %= $20 F-Temp


# Spawn Point
execute if score $StopW F-Timer matches 1 as @a[team=Player] at @s run function random-respawn:core/sp/summon-sp
execute if score $StopW20 F-Timer matches 0 as @a[team=Player,tag=!Did-MCID] at @s run function random-respawn:core/sp/set-sp

# Filled Map デコレーション
execute if score $gm F-Temp matches 1..3 if data storage random-respawn {Setting:[{MapEnable:1b}]} if score $StopW20 F-Timer matches 0 as @a[team=Player,tag=Did-MCID,tag=!Did-Head] at @s as @e[tag=ILoveFilledMap,sort=nearest,limit=1] at @s run function random-respawn:core/1-3/filledmap/decoration-map