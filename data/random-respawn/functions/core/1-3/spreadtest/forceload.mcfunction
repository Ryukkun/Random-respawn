execute at @e[tag=First-SP] run forceload add ~ ~
scoreboard players add $SpreadTestChunk F-Timer 1
execute if score $SpreadTestChunk F-Timer matches ..150 run schedule function random-respawn:core/1-3/spreadtest/forceload 1t