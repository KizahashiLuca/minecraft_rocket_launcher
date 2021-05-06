#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set square root
scoreboard players operation @s MRL_SqrtVarX += @s MRL_SqrtVarI
scoreboard players add @s MRL_SqrtXYZ 1
scoreboard players add @s MRL_SqrtVarI 2
execute if score @s MRL_NormXYZ > @s MRL_SqrtVarX run function mrl:system/launcher/misile_launcher/square_root