#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_SummonTraderArea"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

## Set position
spreadplayers ~ ~ 24.0 48.0 false @e[type=minecraft:area_effect_cloud,tag=MRL_SummonTraderArea,limit=1]

## Summon Arms Trader
execute at @e[type=minecraft:area_effect_cloud,tag=MRL_SummonTraderArea,limit=1] run summon minecraft:wandering_trader ~ ~ ~ {CustomName:'{"text":"Arms Trader","italic":false}',CustomNameVisible:0b,Offers:{Recipes:[{maxUses:1000,buy:{id:"minecraft:emerald",Count:3b},buyB:{id:"minecraft:crossbow",Count:1b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'["",{"text":"Rocket Launcher","color":"aqua","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{display:{Name:'["",{"text":"Unguided projectile (Rocket)","color":"aqua","italic":false}]'}}}],Damage:0,Charged:1b,Tags:["MRL_RocketLauncher"]}},xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b},{maxUses:1000,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:crossbow",Count:1b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'["",{"text":"Misile Launcher","color":"aqua","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{display:{Name:'["",{"text":"Guided projectile (Misile)","color":"aqua","italic":false}]'}}}],Damage:0,Charged:1b,Tags:["MRL_MisileLauncher"]}},xp:2,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}]},DespawnDelay:48000,Tags:["MRL_NotSetTarget","MRL_ArmsTrader"]}

## Set target
execute store result entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] WanderTarget.X int 1.0 run data get entity @s Pos[0]
execute store result entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] WanderTarget.Y int 1.0 run data get entity @s Pos[1]
execute store result entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] WanderTarget.Z int 1.0 run data get entity @s Pos[2]

## Summon mule
execute at @e[type=minecraft:area_effect_cloud,tag=MRL_SummonTraderArea,limit=1] run summon minecraft:mule ~ ~ ~ {ChestedHorse:1b,Tags:["MRL_NotSetTarget"]}

## Set leash
execute store result entity @e[type=minecraft:mule,tag=MRL_NotSetTarget,limit=1] Leash.UUID[0] int 1.0 run data get entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] UUID[0]
execute store result entity @e[type=minecraft:mule,tag=MRL_NotSetTarget,limit=1] Leash.UUID[1] int 1.0 run data get entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] UUID[1]
execute store result entity @e[type=minecraft:mule,tag=MRL_NotSetTarget,limit=1] Leash.UUID[2] int 1.0 run data get entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] UUID[2]
execute store result entity @e[type=minecraft:mule,tag=MRL_NotSetTarget,limit=1] Leash.UUID[3] int 1.0 run data get entity @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget,limit=1] UUID[3]

## Remove a tag
tag @e[type=minecraft:wandering_trader,tag=MRL_NotSetTarget] remove MRL_NotSetTarget
tag @e[type=minecraft:mule,tag=MRL_NotSetTarget] remove MRL_NotSetTarget

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_SummonTraderArea]

# tellraw @a ["",{"text":"summon"}]