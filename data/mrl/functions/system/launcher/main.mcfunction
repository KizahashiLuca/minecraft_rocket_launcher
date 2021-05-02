#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Rocket Launcher
execute as @s[predicate=mrl:after_shot/rocket_launcher/mainhand] run function mrl:system/launcher/rocket_launcher/detect_shoot/mainhand
execute as @s[predicate=mrl:after_shot/rocket_launcher/offhand] run function mrl:system/launcher/rocket_launcher/detect_shoot/offhand

## Misile Launcher
execute as @s[scores={MRL_TargetReset=0},predicate=mrl:after_shot/misile_launcher/mainhand] run function mrl:system/launcher/misile_launcher/detect_shoot/mainhand_success
execute as @s[scores={MRL_TargetReset=0},predicate=mrl:after_shot/misile_launcher/offhand] run function mrl:system/launcher/misile_launcher/detect_shoot/offhand_success
execute as @s[scores={MRL_TargetReset=1..},predicate=mrl:after_shot/misile_launcher/mainhand] run function mrl:system/launcher/misile_launcher/detect_shoot/mainhand_failed
execute as @s[scores={MRL_TargetReset=1..},predicate=mrl:after_shot/misile_launcher/offhand] run function mrl:system/launcher/misile_launcher/detect_shoot/offhand_failed