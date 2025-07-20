#                                                                                                                                             
#                                                                                                                                            
#                                                                                                                                           
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                           
#                                                                                                                                            
#                                                                                                                                            
#                                                                                              .                                             
#                                                                                             @@@@@                                          
#                                                                                            @@@-@@@@@+                                      
#                                                                                           @@@     @@@@@@.                                  
#                                                                                          @@@         =@@@@@@                               
#                                                                                         @@@              @@@@@                             
#                                                                                        @@@                                                 
#                                                                                       @@@                                                  
#                                                                                      @@@=                                                  
#                                                                                     :@@:                                                   
#                                                                                    +@@@                                                    
#                                                                                    @@@                                                     
#                                                                                  .@@@                                                      
#                                                                                  @@@                                                       
#                                                                                 @@@                                                        
#                                                                                @@@                                                         
#                                                                               @@@                                                          
#                                                                              @@@                                                           
#                                                                 #@@@@@@@@@@:@@@                                                            
#                                                             :@@@@@@@@@@@@@@@@@@                                                            
#                                                           @@@@@             .@@@@                                                          
#                                                         @@@@                   @@@@                                                        
#                                                         %%                       ##=                                                       
#             @::::=%@@  @           @@       -@@. =@@  @       @@  -@#  =@@  @     @        @=@::::@@:::   *@@  *@@  @        @             
#             @       +# @           @:@     @#       @ @      @   =@       @ @*    @#      @ =@    @=     @=       @ @        @             
#             @        @ @          @# @    #@          @    @#    %@       @  @     @      @ =@    @=    @=          @        @             
#             @       @  @         :@   @   @           @   @       @@         +=    @#    @: =@    @=    @           @        @             
#             @=====@@   @         @    @.  @           @ @ @          #@@:     @    @@   :@  =@    @=    @           @#=======@             
#             @       .@ @        :@     @  @           @%   @=            -@   #@  @::#  @   =@    @=    @           @        @             
#             @        @ @        @      @% @@          @     %@   @        @    @ -@  @  @   =@    @=    @:          @        @             
#             @ =*=.   @ @       @*       @  @=       @ @       @  @@       @    #@@   =@@    =@    @=     @.      :% @        @             
#             @=:=:==@@  @......:@        @+  @@*  -@@  @        @   @#   @@      @@    @@    =@    @=      @@=  =@@  @        @             
#                                                         ::                       ::                                                        
#                                                         @@@@                   @@@@                                                        
#                                                           @@@@@              @@@@                                                          
#                                                             =@@@@@@@@@@@@@@@@@@                                                            
#                                                             @@@%@@@@@@@@@@@:                                                               
#                                                            @@@:                                                                            
#                                                           @@@+                                                                             
#                                                          :@@+                                                                              
#                                                         #@@+                                                                               
#                                                         @@@                                                                                
#                                                       :@@@                                                                                 
#                                                       @@@                                                                                  
#                                                      @@@                                                                                   
#                                                     @@@                                                                                    
#                                                    @@@                                                                                     
#                                                   @@@                                                                                      
#                                                  @@@                                                                                       
#                              :@@@@              @@@                                                                                        
#                                #@@@@@#         @@@                                                                                         
#                                    @@@@@@:    @@@+                                                                                         
#                                        @@@@@@+@@:                                                                                          
#                                           =@@@@@                                                                                           
#                                               :                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            
#                                                                                                                                            

function ancient_artifacts:convert/tick

##lootbox
#execute if score .10 slow_tick matches 3 run scoreboard players enable @a lootbox
#execute if score .10 slow_tick matches 3 as @a[scores={lootbox=1..}] run function ancient_artifacts:lootbox/trigger
#execute if score .10 slow_tick matches 3 as @a[scores={join=1..}] run function ancient_artifacts:lootbox/message

## Ask for suggestion message
execute as @a at @s run function ancient_artifacts:auto_message

##Don't do anything if packs not compatable
execute if data storage theblackswitch:versions {compatable:false} run return fail

#run as early as possible
function ancient_artifacts:artifact_manual/tick

##Fix gamerules
gamerule keepInventory false

#init player scores
execute as @a unless score @s artifact_slot_count matches 0.. run scoreboard players set @s artifact_slot_count 2
execute as @a unless score @s artifact_slot_1 matches -1.. run scoreboard players set @s artifact_slot_1 0
execute as @a unless score @s artifact_slot_2 matches -1.. run scoreboard players set @s artifact_slot_2 0
execute as @a unless score @s artifact_slot_3 matches -1.. run scoreboard players set @s artifact_slot_3 0
execute as @a unless score @s luck matches 0..2 run scoreboard players set @s luck 0
execute as @a run function ancient_artifacts:calc_health

##tick functions
execute if score .5 slow_tick matches 5 as @e[type=marker,tag=abandoned_well] at @s run function ancient_artifacts:abandoned_well
execute if score .10 slow_tick matches 10 as @a[scores={hide_artifact_hud=0}] run function ancient_artifacts:artifact_hud/tick
execute as @a run function ancient_artifacts:config/tick
function ancient_artifacts:ancient_hammer/tick
function ancient_artifacts:mystery_box/tick
function ancient_artifacts:advancements/tick
function ancient_artifacts:artifact_smith/tick
function ancient_artifacts:artifact_chests/tick
function ancient_artifacts:ancient_altar/tick
function ancient_artifacts:ancient_stone/tick
function ancient_artifacts:artifact_hotbar/tick
function ancient_artifacts:artifact_upgrade/tick
function ancient_artifacts:artifacts/tick
#function ancient_artifacts:pots/tick
function ancient_artifacts:dungeon/tick
function ancient_artifacts:artifact_golem/tick
function ancient_artifacts:artifact_cauldron/tick
function ancient_artifacts:ancient_parchment/tick
function ancient_artifacts:mobspawn/tick
function ancient_artifacts:sculk_heart/tick
function ancient_artifacts:expansion_star/tick
function ancient_artifacts:shulker_castle/tick
function ancient_artifacts:creative_book/tick
function ancient_artifacts:update/tick

#Echo chunk
execute if score .10 slow_tick matches 10 as @a if items entity @s container.* echo_shard[minecraft:custom_data~{"echo_chunk":true}] run function ancient_artifacts:echo_chunk

##Timewarp
execute as @a at @s run function ancient_artifacts:timewarp

##shield / bow time
execute as @a if score @s shield_time = @s prev_shield_time run function ancient_artifacts:reset_shield_time
execute as @a run scoreboard players operation @s prev_shield_time = @s shield_time
execute as @a if score @s bow_time = @s prev_bow_time run function ancient_artifacts:reset_bow_time
execute as @a run scoreboard players operation @s prev_bow_time = @s bow_time

##Scoreboard Resets
#Reset on death
execute as @a[scores={death=1..},tag=!recovery,tag=!focused] run function ancient_artifacts:artifacts/reset
scoreboard players set @a[scores={death=1..},tag=!recovery_3,tag=!focused] artifact_slot_1 0
scoreboard players set @a[scores={death=1..},tag=!recovery_3,tag=!focused] artifact_slot_2 0
scoreboard players set @a[scores={death=1..},tag=!recovery_3,tag=!focused] artifact_slot_3 0


##Normal resets
scoreboard players set @a walk 0
scoreboard players set @a damage 0
scoreboard players set @a sprint 0
scoreboard players set @a sneak 0
scoreboard players set @a death 0
scoreboard players set @a player_left 0
scoreboard players set @a used_carrot_stick 0
scoreboard players set @a attack 0

team join aa.players @a

