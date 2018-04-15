#creeper_trapと名付けられたストラクチャーヴォイドにcreeperTrapというタグを付け、creeperTrapのタグを持つアイテムのところに「釣りーパー」を召喚します
scoreboard players tag @e[type=item] add creeperTrap {Item:{id:"minecraft:structure_void",tag:{display:{Name:"creeper_trap"}}}}
execute @e[type=item,tag=creeperTrap] ~ ~ ~ summon minecraft:creeper ~ ~ ~ {Motion:[0.0,1.5,0.0],CustomName:"釣りーパー"}
kill @e[type=item,tag=creeperTrap]
#釣りーパーにtrapCreeperというタグを付けます
scoreboard players tag @e[type=creeper] add trapCreeper {CustomName:"釣りーパー"}
execute @e[score_fishingCreeper=1,score_fishingCreeper_min=1,type=creeper,tag=trapCreeper] ~ ~ ~ playsound minecraft:entity.generic.splash master @e[score_fishingCreeper=1,score_fishingCreeper_min=1,type=creeper,tag=trapCreeper] ~ ~ ~ 1.0 0.7
execute @e[score_fishingCreeper=15,score_fishingCreeper_min=1,type=creeper,tag=trapCreeper] ~ ~ ~ particle splash ~ ~ ~ 0.3 0.1 0.3 0 20
#execute @e[score_fishingCreeper=1,score_fishingCreeper_min=1,type=creeper,tag=trapCreeper] ~ ~ ~ 