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
loot replace entity @s weapon.mainhand loot mrl:misile_launcher

## Play sound
playsound entity.armor_stand.break player @a ~ ~ ~ 1.0 1.0

## Add a tag
tag @s add MRL_MisileShooter

## Detect firework_rocket
execute as @e[type=minecraft:firework_rocket,tag=!MRL_IgnitedMisile] run function mrl:system/launcher/misile_launcher/detect_shoot/detect_misile

## Kill firework_rocket
kill @e[type=minecraft:firework_rocket,tag=MRL_IgnitingMisile]

## Set scoreboard
function mrl:system/launcher/misile_launcher/find_target/reset_target

## Remove a tag
tag @s remove MRL_MisileShooter