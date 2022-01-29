# Load by random-respawn:core/main
# @s = none
#-----------------------------------

# 毎tick +1
scoreboard players add $StopW F-Timer 1

# calclate
scoreboard players operation $StopW20 F-Timer = $StopW F-Timer
scoreboard players operation $StopW20 F-Timer %= $20 F-Temp

# Filled Map デコレーション
execute if score $StopW20 F-Timer matches 0 if data storage random-respawn {Setting:{MapEnable:1b}} as @e[tag=ILoveFilledMap] at @s run function random-respawn:core/1-3/filledmap/decoration-map