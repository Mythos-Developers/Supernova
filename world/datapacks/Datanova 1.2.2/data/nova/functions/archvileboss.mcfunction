execute at @e[type=minecraft:husk,name=Archvile] if entity @e[type=minecraft:husk,name=Archvile] run bossbar set minecraft:archvile players @a[distance=..60]
execute if entity @e[type=minecraft:husk,name=Archvile] run execute store result bossbar minecraft:archvile value run data get entity @e[type=husk,name=Archvile,limit=1] Health 1
team join BOSS @e[type=husk,name=Archvile]
execute unless entity @e[type=minecraft:husk,name=Archvile] run bossbar set minecraft:archvile players