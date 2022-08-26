#   Load by random-respawn:core/spreadtest/spreadtest
#   2048
#----------------------------------------


# Overworld
execute if entity @e[tag=map-center,tag=!F-InNether] if data storage random-respawn: {SpreadSuccess:0b} store success storage random-respawn: SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 896 false @e[tag=First-SP-M]
execute if entity @e[tag=map-center,tag=!F-InNether] if data storage random-respawn: {SpreadSuccess:0b} store success storage random-respawn: SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 896 false @e[tag=First-SP-M]

# Nether
execute if entity @e[tag=map-center,tag=F-InNether] if data storage random-respawn: {SpreadSuccess:0b} store success storage random-respawn: SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 896 under 127 false @e[tag=First-SP-M]
execute if entity @e[tag=map-center,tag=F-InNether] if data storage random-respawn: {SpreadSuccess:0b} store success storage random-respawn: SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 896 under 127 false @e[tag=First-SP-M]