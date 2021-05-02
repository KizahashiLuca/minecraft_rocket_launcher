#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Calculate Diff
execute store result score @s MRL_DiffX run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[0]
execute store result score @s MRL_DiffY run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[1]
execute store result score @s MRL_DiffZ run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[2]
execute store result score @s MRL_PosX run data get entity @s Pos[0]
execute store result score @s MRL_PosY run data get entity @s Pos[1]
execute store result score @s MRL_PosZ run data get entity @s Pos[2]
scoreboard players operation @s MRL_DiffX -= @s MRL_PosX
scoreboard players operation @s MRL_DiffY -= @s MRL_PosY
scoreboard players operation @s MRL_DiffZ -= @s MRL_PosZ

## Calculate square root
scoreboard players operation @s MRL_PowDiffX = @s MRL_DiffX
scoreboard players operation @s MRL_PowDiffY = @s MRL_DiffY
scoreboard players operation @s MRL_PowDiffZ = @s MRL_DiffZ
scoreboard players operation @s MRL_PowDiffX *= @s MRL_DiffX
scoreboard players operation @s MRL_PowDiffY *= @s MRL_DiffY
scoreboard players operation @s MRL_PowDiffZ *= @s MRL_DiffZ
scoreboard players operation @s MRL_NormXYZ = @s MRL_PowDiffX
scoreboard players operation @s MRL_NormXYZ += @s MRL_PowDiffY
scoreboard players operation @s MRL_NormXYZ += @s MRL_PowDiffZ

scoreboard players set @s MRL_SqrtVarI 1
scoreboard players set @s MRL_SqrtVarX 0
scoreboard players set @s MRL_SqrtXYZ 0
execute if score @s MRL_NormXYZ > @s MRL_SqrtVarX run function mrl:system/launcher/misile_launcher/square_root

## Calculate vector
scoreboard players operation @s MRL_DiffX *= #mrl MRL_1000
scoreboard players operation @s MRL_DiffY *= #mrl MRL_1000
scoreboard players operation @s MRL_DiffZ *= #mrl MRL_1000
scoreboard players operation @s MRL_DiffX /= @s MRL_SqrtXYZ
scoreboard players operation @s MRL_DiffY /= @s MRL_SqrtXYZ
scoreboard players operation @s MRL_DiffZ /= @s MRL_SqrtXYZ

execute store result entity @s Motion[0] double 0.0016 run scoreboard players get @s MRL_DiffX
execute store result entity @s Motion[1] double 0.0016 run scoreboard players get @s MRL_DiffY
execute store result entity @s Motion[2] double 0.0016 run scoreboard players get @s MRL_DiffZ

## Particle
particle minecraft:dust 0.141 0.125 0.125 1 ~ ~ ~ ~ ~ ~ 1 0 normal @a