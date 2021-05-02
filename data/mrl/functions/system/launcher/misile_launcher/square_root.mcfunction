#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set square root
scoreboard players operation @s SqrtVarX += @s SqrtVarI
scoreboard players add @s SqrtXYZ 1
scoreboard players add @s SqrtVarI 2
execute if score @s NormXYZ > @s SqrtVarX run function mrl:system/launcher/misile_launcher/square_root