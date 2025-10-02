execute store result score #value fsb_value run data get entity @s active_effects[{id:"minecraft:speed"}].amplifier

execute if score #value fsb_value matches 0 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:speed 0.2 add_multiplied_total
execute if score #value fsb_value matches 1 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:speed 0.4 add_multiplied_total

execute unless score #value fsb_value matches 0..1 run \
  execute store result storage speedy_flying_mobs:temp value double 0.2 run scoreboard players get #value fsb_value
execute unless score #value fsb_value matches 0..1 run \
  function speedy_flying_mobs:speed_custom with storage speedy_flying_mobs:temp
