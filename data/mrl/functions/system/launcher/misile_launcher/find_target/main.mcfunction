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
execute as @s[predicate=mrl:before_shot/misile_launcher/mainhand,predicate=mrl:before_shot/misile_launcher/sneak] at @s run function mrl:system/launcher/misile_launcher/find_target/set_target
execute as @s[predicate=mrl:before_shot/misile_launcher/offhand,predicate=mrl:before_shot/misile_launcher/sneak] at @s run function mrl:system/launcher/misile_launcher/find_target/set_target
execute as @s[predicate=!mrl:before_shot/misile_launcher/mainhand,predicate=!mrl:before_shot/misile_launcher/offhand] at @s run function mrl:system/launcher/misile_launcher/find_target/reset_target