execute as @e[type=#speedy_flying_mobs:non_immune_flying,nbt={active_effects:[{id:"minecraft:speed"}]}] run function speedy_flying_mobs:speed
execute as @e[type=#speedy_flying_mobs:non_immune_flying,nbt=!{active_effects:[{id:"minecraft:speed"}]}] run attribute @s minecraft:flying_speed modifier remove speedy_flying_mobs:speed

execute as @e[type=#speedy_flying_mobs:non_immune_flying,nbt={active_effects:[{id:"minecraft:slowness"}]}] run function speedy_flying_mobs:slowness
execute as @e[type=#speedy_flying_mobs:non_immune_flying,nbt=!{active_effects:[{id:"minecraft:slowness"}]}] run attribute @s minecraft:flying_speed modifier remove speedy_flying_mobs:slowness
