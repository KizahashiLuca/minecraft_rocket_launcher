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
tag @p[predicate=mrl:after_shot/in_inventory] add MRL_ShotLauncher

## Rocket Launcher
execute if entity @p[tag=MRL_ShotLauncher,predicate=mrl:after_shot/rocket_launcher/mainhand] run function mrl:system/launcher/rocket_launcher/detect_shoot/mainhand
execute if entity @p[tag=MRL_ShotLauncher,predicate=mrl:after_shot/rocket_launcher/offhand] run function mrl:system/launcher/rocket_launcher/detect_shoot/offhand

## Misile Launcher
execute if entity @p[tag=MRL_ShotLauncher,tag=MRL_LockonTarget,predicate=mrl:after_shot/misile_launcher/mainhand] run function mrl:system/launcher/misile_launcher/detect_shoot/mainhand_success
execute if entity @p[tag=MRL_ShotLauncher,tag=MRL_LockonTarget,predicate=mrl:after_shot/misile_launcher/offhand] run function mrl:system/launcher/misile_launcher/detect_shoot/offhand_success
execute if entity @p[tag=MRL_ShotLauncher,tag=!MRL_LockonTarget,predicate=mrl:after_shot/misile_launcher/mainhand] run function mrl:system/launcher/misile_launcher/detect_shoot/mainhand_failed
execute if entity @p[tag=MRL_ShotLauncher,tag=!MRL_LockonTarget,predicate=mrl:after_shot/misile_launcher/offhand] run function mrl:system/launcher/misile_launcher/detect_shoot/offhand_failed

## Remove a tag
tag @a remove MRL_ShotLauncher

## Launcher Loop
execute if entity @p[predicate=mrl:after_shot/in_inventory] run function mrl:system/launcher/main