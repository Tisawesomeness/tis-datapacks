execute store result score #value fsb_value run data get entity @s active_effects[{id:"minecraft:slowness"}].amplifier

execute if score #value fsb_value matches 0 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:slowness -0.15 add_multiplied_total
execute if score #value fsb_value matches 1 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:slowness -0.3 add_multiplied_total
execute if score #value fsb_value matches 3 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:slowness -0.6 add_multiplied_total
execute if score #value fsb_value matches 5 run attribute @s minecraft:flying_speed modifier add speedy_flying_mobs:slowness -0.9 add_multiplied_total

execute unless score #value fsb_value matches 0..1 unless score #value fsb_value matches 3 unless score #value fsb_value matches 5 run \
  execute store result storage speedy_flying_mobs:temp value byte -0.15 run scoreboard players get #value fsb_value
execute unless score #value fsb_value matches 0..1 unless score #value fsb_value matches 3 unless score #value fsb_value matches 5 run \
  function speedy_flying_mobs:slowness_custom with storage speedy_flying_mobs:temp
