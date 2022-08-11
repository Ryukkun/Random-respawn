scoreboard players add @s F-Timer 1
execute at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..0.0001] F-Member run forceload add ~ ~
execute if score @s F-Timer matches ..400 run schedule function random-respawn:core/sp/alone-schedule 1t
execute at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..0.0001] F-Member at @s run function random-respawn:core/countdown/alone-start
execute if score @s F-Timer matches 401.. run tellraw @a[tag=F-Fin-Book] "Error : TIMEOUT [SpreadTest]"