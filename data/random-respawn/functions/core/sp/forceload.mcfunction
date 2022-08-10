scoreboard players add $SpreadTestChunk F-Timer 1
execute at @e[tag=First-SP] run forceload add ~ ~
scoreboard players set $First-SP F-Meet 0
execute as @e[tag=First-SP] run scoreboard players add $First-SP F-Meet 1
execute if score $SpreadTestChunk F-Timer matches ..400 run schedule function random-respawn:core/sp/forceload 1t
execute if score $First-SP F-Meet = $PlayerCount F-Meet if score $gm F-Temp matches 1..3 run function random-respawn:core/countdown/countdown-start
execute if score $First-SP F-Meet = $PlayerCount F-Meet if score $gm F-Temp matches 4 run function random-respawn:core/countdown/countdown-start
execute if score $SpreadTestChunk F-Timer matches 401.. run tellraw @a "Error : TIMEOUT [SpreadTest]"