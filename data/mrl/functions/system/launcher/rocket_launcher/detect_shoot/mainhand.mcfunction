#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Replace item
replaceitem entity @s weapon.mainhand minecraft:air

## Play sound
playsound entity.item.break player @a ~ ~ ~ 1.0 1.0

## Add a tag
tag @s add MRL_RocketShooter

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MRL_IgnitedRocket] run function mrl:system/launcher/rocket_launcher/detect_shoot/detect_rocket
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitingRocket] run function mrl:system/launcher/rocket_launcher/detect_shoot/igniting_rocket

## Remove a tag
tag @s remove MRL_RocketShooter