#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add a tag
tag @p[tag=MRL_ShotLauncher,predicate=mrl:after_shot/misile_launcher/mainhand] add MRL_ShotMisileLauncher

## Replace item
replaceitem entity @p[tag=MRL_ShotMisileLauncher] weapon.mainhand minecraft:air

## Play sound
execute at @p[tag=MRL_ShotMisileLauncher] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MRL_IgnitedMisile] run function mrl:system/launcher/misile_launcher/detect_shoot/detect_misile
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitingMisile] at @p[tag=MRL_ShotMisileLauncher] run function mrl:system/launcher/misile_launcher/detect_shoot/igniting_misile

## Set scoreboard
function mrl:system/launcher/misile_launcher/find_target/reset_target

## Remove a tag
tag @a remove MRL_ShotMisileLauncher