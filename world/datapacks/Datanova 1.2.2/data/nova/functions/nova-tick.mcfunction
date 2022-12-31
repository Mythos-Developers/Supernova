# Armor stand handling
data merge entity @e[type=minecraft:armor_stand,limit=1,nbt={ShowArms:0b}] {ShowArms:1b}
data merge entity @e[type=minecraft:armor_stand,limit=1,nbt={HandItems:[{id:"minecraft:armor_stand"},{}]},nbt={Small:0b}] {Small:1b}
data merge entity @e[type=minecraft:armor_stand,limit=1,nbt={HandItems:[{id:"minecraft:gravel"},{}]}] {NoGravity:1b}
data merge entity @e[type=minecraft:armor_stand,limit=1,nbt={HandItems:[{id:"minecraft:smooth_stone_slab"},{}]},nbt={NoBasePlate:0b}] {NoBasePlate:1b}

# Actionbar info
execute as @a at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"Bits"},"color":"blue"},{"text":" Bits ","color":"blue"},{"text":"- ","color":"dark_gray"},{"score":{"name":"@s","objective":"Health"},"color":"red"},{"text":" Health ","color":"red"},{"text":"- ","color":"dark_gray"},{"score":{"name":"@s","objective":"Souls"},"color":"dark_aqua"},{"text":" Souls","color":"dark_aqua"}]

# Scoreboard handling
execute as @a at @s store result score @s Health run data get entity @s Health