#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add a tag
tag @p[tag=MRL_ShotLauncher,predicate=mrl:after_shot/rocket_launcher/offhand] add MRL_ShotRocketLauncher

## Replace item
loot replace entity @p[tag=MRL_ShotRocketLauncher] weapon.offhand loot minecraft:empty

## Play sound
execute at @p[tag=MRL_ShotRocketLauncher] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MRL_IgnitedRocket] run function mrl:system/launcher/rocket_launcher/detect_shoot/detect_rocket
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitingRocket] at @p[tag=MRL_ShotRocketLauncher] run function mrl:system/launcher/rocket_launcher/detect_shoot/igniting_rocket

## Remove a tag
tag @a remove MRL_ShotRocketLauncher