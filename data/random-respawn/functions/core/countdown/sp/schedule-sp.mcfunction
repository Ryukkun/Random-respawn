execute as @e[tag=First-SP,tag=!Did-MCID] at @s run function random-respawn:core/countdown/sp/set-sp
execute if entity @e[tag=First-SP,tag=!Did-MCID] run schedule function random-respawn:core/countdown/sp/schedule-sp 1s