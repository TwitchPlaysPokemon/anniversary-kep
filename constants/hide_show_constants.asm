DEF HIDE EQU $11
DEF SHOW EQU $15

; MissableObjects indexes (see data/maps/hide_show_data.asm)
; this is a list of the sprites that can be enabled/disabled during the game
; sprites marked with an X are constants that are never used
; because those sprites are not (de)activated in a map's script
; (they are either items or sprites that deactivate after battle
; and are detected in wMissableObjectList)
; However, these constants are still required to synchronise properly
; Factoring in the hide/show list, so you can't just remove them.

	const_def
	const HS_PALLET_TOWN_OAK               
	const HS_LYING_OLD_MAN                 
	const HS_OLD_MAN                       
	const HS_MUSEUM_GUY                    
	const HS_GYM_GUY                       
	const HS_CERULEAN_RIVAL                
	const HS_CERULEAN_ROCKET               
	const HS_CERULEAN_GUARD_1              
	const HS_CERULEAN_CAVE_GUY             
	const HS_CERULEAN_GUARD_2              
	const HS_VERMILION_JENNY               
	const HS_SAFFRON_CITY_1                
	const HS_SAFFRON_CITY_2                
	const HS_SAFFRON_CITY_3                
	const HS_SAFFRON_CITY_4                
	const HS_SAFFRON_CITY_5                
	const HS_SAFFRON_CITY_6                
	const HS_SAFFRON_CITY_7                
	const HS_SAFFRON_CITY_8                
	const HS_SAFFRON_CITY_9                
	const HS_SAFFRON_CITY_A                
	const HS_SAFFRON_CITY_B                
	const HS_SAFFRON_CITY_C                
	const HS_SAFFRON_CITY_D                
	const HS_SAFFRON_CITY_E                
	const HS_SAFFRON_CITY_F                
	const HS_ROUTE_1_OAK                   
	const HS_ROUTE_2_ITEM_1                ; X
	const HS_ROUTE_2_ITEM_2                ; X
	const HS_ROUTE_4_ITEM                  ; X
	const HS_ROUTE_9_ITEM                  ; X
	const HS_ROUTE_12_SNORLAX              
	const HS_ROUTE_12_ITEM_1               ; X
	const HS_ROUTE_12_ITEM_2               ; X
	const HS_ROUTE_15_ITEM                 ; X
	const HS_ROUTE_16_SNORLAX              
	const HS_ROUTE_22_RIVAL_1              
	const HS_ROUTE_22_RIVAL_2              
	const HS_NUGGET_BRIDGE_GUY             
	const HS_ROUTE_24_ITEM                 ; X
	const HS_DAMIEN                        
	const HS_ROUTE_25_ITEM                 ; X
	const HS_CACTUS                        
	const HS_BRUNSWICK_ZAPDOS_G_1          
	const HS_BRUNSWICK_TRAIL_ITEM1
	const HS_DAISY_SITTING                 
	const HS_DAISY_WALKING                 
	const HS_TOWN_MAP                      
	const HS_OAKS_LAB_RIVAL                
	const HS_STARTER_BALL_1                
	const HS_STARTER_BALL_2                
	const HS_STARTER_BALL_3                
	const HS_OAKS_LAB_OAK_1                
	const HS_STARTER_BALL_4                ; was dex, pikachu
	const HS_STARTER_BALL_5                ; was dex, eevee
	const HS_OAKS_LAB_OAK_2                
	const HS_VIRIDIAN_GYM_GIOVANNI         
	const HS_VIRIDIAN_GYM_ITEM             ; X
	const HS_OLD_AMBER                     
	const HS_CERULEAN_CAVE_1F_ITEM_1       ; X
	const HS_CERULEAN_CAVE_1F_ITEM_2       ; X
	const HS_CERULEAN_CAVE_1F_ITEM_3       ; X
	const HS_TPP_KAY              
	const HS_MOLTRES_G                     ; X
	const HS_POKEMON_TOWER_2F_RIVAL        
	const HS_BRUNSWICK_ZAPDOS_G_2          
	const HS_POKEMON_TOWER_5F_ITEM         ; X
	const HS_POKEMON_TOWER_6F_ITEM_1       ; X
	const HS_POKEMON_TOWER_6F_ITEM_2       ; X
	const HS_POKEMON_TOWER_7F_JESSIE       
	const HS_POKEMON_TOWER_7F_JAMES        
	const HS_POKEMON_TOWER_7F_MR_FUJI      
	const HS_MR_FUJIS_HOUSE_MR_FUJI        
	const HS_MORIMOTO
	const HS_CELADON_MANSION_EEVEE_GIFT    
	const HS_GAME_CORNER_ROCKET            
	const HS_WARDENS_HOUSE_ITEM            ; X
	const HS_POKEMON_MANSION_1F_ITEM_1     ; X
	const HS_POKEMON_MANSION_1F_ITEM_2     ; X
	const HS_FIGHTING_DOJO_GIFT_1          
	const HS_FIGHTING_DOJO_GIFT_2          
	const HS_FIGHTING_DOJO_GIFT_3          
	const HS_SILPH_CO_1F_RECEPTIONIST      
	const HS_VOLTORB_1                     ; X
	const HS_VOLTORB_2                     ; X
	const HS_VOLTORB_3                     ; X
	const HS_ELECTRODE_1                   ; X
	const HS_VOLTORB_4                     ; X
	const HS_VOLTORB_5                     ; X
	const HS_ELECTRODE_2                   ; X
	const HS_VOLTORB_6                     ; X
	const HS_ZAPDOS                        ; X
	const HS_POWER_PLANT_ITEM_1            ; X
	const HS_POWER_PLANT_ITEM_2            ; X
	const HS_POWER_PLANT_ITEM_3            ; X
	const HS_POWER_PLANT_ITEM_4            ; X
	const HS_POWER_PLANT_ITEM_5            ; X
	const HS_VICTORY_ROAD_2F_ITEM_0        ; X
	const HS_VICTORY_ROAD_2F_ITEM_1        ; X
	const HS_VICTORY_ROAD_2F_ITEM_2        ; X
	const HS_VICTORY_ROAD_2F_ITEM_3        ; X
	const HS_VICTORY_ROAD_2F_ITEM_4        ; X
	const HS_VICTORY_ROAD_2F_BOULDER       
	const HS_BILL_POKEMON                  
	const HS_BILL_1                        
	const HS_BILL_2                        
	const HS_BILLS_NIDORINO                
	const HS_VIRIDIAN_FOREST_ITEM_1        ; X
	const HS_VIRIDIAN_FOREST_ITEM_2        ; X
	const HS_VIRIDIAN_FOREST_ITEM_3        ; X
	const HS_MT_MOON_1F_ITEM_1             ; X
	const HS_MT_MOON_1F_ITEM_2             ; X
	const HS_MT_MOON_1F_ITEM_3             ; X
	const HS_MT_MOON_1F_ITEM_4             ; X
	const HS_MT_MOON_1F_ITEM_5             ; X
	const HS_MT_MOON_1F_ITEM_6             ; X
	const HS_MT_MOON_B2F_JESSIE            
	const HS_MT_MOON_B2F_JAMES             
	const HS_MT_MOON_B2F_FOSSIL_1          
	const HS_MT_MOON_B2F_FOSSIL_2          
	const HS_MT_MOON_B2F_ITEM_1            ; X
	const HS_MT_MOON_B2F_ITEM_2            ; X
	const HS_SS_ANNE_2F_RIVAL              
	const HS_SS_ANNE_1F_ROOMS_ITEM         ; X
	const HS_SS_ANNE_2F_ROOMS_ITEM_1       ; X
	const HS_SS_ANNE_2F_ROOMS_ITEM_2       ; X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_1      ; X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_2      ; X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_3      ; X
	const HS_VICTORY_ROAD_3F_ITEM_1        ; X
	const HS_VICTORY_ROAD_3F_ITEM_2        ; X
	const HS_VICTORY_ROAD_3F_BOULDER       
	const HS_ROCKET_HIDEOUT_B1F_ITEM_1     ; X
	const HS_ROCKET_HIDEOUT_B1F_ITEM_2     ; X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_1     ; X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_2     ; X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_3     ; X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_4     ; X
	const HS_ROCKET_HIDEOUT_B3F_ITEM_1     ; X
	const HS_ROCKET_HIDEOUT_B3F_ITEM_2     ; X
	const HS_ROCKET_HIDEOUT_B4F_GIOVANNI   
	const HS_ROCKET_HIDEOUT_B4F_JAMES      
	const HS_ROCKET_HIDEOUT_B4F_JESSIE     
	const HS_ROCKET_HIDEOUT_B4F_ITEM_1     ; X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_2     ; X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_3     ; X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_4     
	const HS_ROCKET_HIDEOUT_B4F_ITEM_5     
	const HS_GARNET_ARTICUNO_G             
	const HS_GARNET_ITEM_1                 
	const HS_GARNET_ITEM_2                 
	const HS_ARTICUNO_G_COPY_1             
	const HS_ARTICUNO_G_COPY_2             
	const HS_SILPH_CO_3F_1                 
	const HS_SILPH_CO_3F_2                 
	const HS_SILPH_CO_3F_ITEM              ; X
	const HS_SILPH_CO_5F_1                 
	const HS_SILPH_CO_5F_2                 
	const HS_SILPH_CO_5F_3                 
	const HS_SILPH_CO_5F_4                 
	const HS_SILPH_CO_5F_ITEM_1            ; X
	const HS_SILPH_CO_5F_ITEM_2            ; X
	const HS_SILPH_CO_5F_ITEM_3            ; X
	const HS_SILPH_CO_7F_1                 
	const HS_SILPH_CO_7F_2                 
	const HS_SILPH_CO_7F_3                 
	const HS_SILPH_CO_7F_4                 
	const HS_SILPH_CO_7F_RIVAL             
	const HS_SILPH_CO_7F_ITEM_1            ; X
	const HS_SILPH_CO_7F_ITEM_2            ; X
	const HS_SILPH_CO_11F_1                
	const HS_SILPH_CO_11F_JAMES            
	const HS_SILPH_CO_11F_3                
	const HS_SILPH_CO_11F_JESSIE           
	const HS_OMEGA                         
	const HS_OMEGA_2                       
	const HS_DRAGONITE                     
	const HS_MOLTRES                       
	const HS_POKEMON_MANSION_2F_ITEM       ; X
	const HS_POKEMON_MANSION_3F_ITEM_1     ; X
	const HS_POKEMON_MANSION_3F_ITEM_2     ; X
	const HS_POKEMON_MANSION_B1F_ITEM_1    ; X
	const HS_POKEMON_MANSION_B1F_ITEM_2    ; X
	const HS_POKEMON_MANSION_B1F_ITEM_3    ; X
	const HS_POKEMON_MANSION_B1F_ITEM_4    ; X
	const HS_POKEMON_MANSION_B1F_ITEM_5    ; X
	const HS_MANSION_GUARD                 
	const HS_SAFARI_ZONE_EAST_ITEM_1       ; X
	const HS_SAFARI_ZONE_EAST_ITEM_2       ; X
	const HS_SAFARI_ZONE_EAST_ITEM_3       ; X
	const HS_SAFARI_ZONE_EAST_ITEM_4       ; X
	const HS_SAFARI_ZONE_NORTH_ITEM_1      ; X
	const HS_SAFARI_ZONE_NORTH_ITEM_2      ; X
	const HS_SAFARI_ZONE_WEST_ITEM_1       ; X
	const HS_SAFARI_ZONE_WEST_ITEM_2       ; X
	const HS_SAFARI_ZONE_WEST_ITEM_3       ; X
	const HS_SAFARI_ZONE_WEST_ITEM_4       ; X
	const HS_SAFARI_ZONE_CENTER_ITEM       ; X
	const HS_CERULEAN_CAVE_2F_ITEM_1       ; X
	const HS_CERULEAN_CAVE_2F_ITEM_2       ; X
	const HS_CERULEAN_CAVE_2F_ITEM_3       ; X
	const HS_MEWTWO
	const HS_CERULEAN_CAVE_B1F_ITEM_1      ; X
	const HS_CERULEAN_CAVE_B1F_ITEM_2      ; X
	const HS_VICTORY_ROAD_1F_ITEM_1        ; X
	const HS_VICTORY_ROAD_1F_ITEM_2        ; X
	const HS_CHAMPIONS_ROOM_OAK            
	const HS_SEAFOAM_ISLANDS_1F_BOULDER_1  
	const HS_SEAFOAM_ISLANDS_1F_BOULDER_2  
	const HS_SEAFOAM_ISLANDS_B1F_BOULDER_1 
	const HS_SEAFOAM_ISLANDS_B1F_BOULDER_2 
	const HS_SEAFOAM_ISLANDS_B2F_BOULDER_1 
	const HS_SEAFOAM_ISLANDS_B2F_BOULDER_2 
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_1 
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_2 
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_3 
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_4 
	const HS_SEAFOAM_ISLANDS_B4F_BOULDER_1 
	const HS_SEAFOAM_ISLANDS_B4F_BOULDER_2 
	const HS_ARTICUNO                      
	const HS_MEW                           
	const HS_TPP_BBBBBa                    
	const HS_POKEMON_MANSION_B2F_ITEM_1    
	const HS_POKEMON_MANSION_B2F_ITEM_2    
	const HS_MT_MOON_CRATER_ITEM_1         
	const HS_MT_MOON_CRATER_ITEM_2         
	const HS_MT_MOON_CRATER_ITEM_3         
	const HS_MT_MOON_CRATER_ITEM_4         
	const HS_TPP_CCC                       
	const HS_GIOVANNIS_ROOM_ITEM_1         
	const HS_GIOVANNIS_ROOM_ITEM_2         
	const HS_TPP_ROCKETA                   
	const HS_ROCK_TUNNEL_B1F_DOME          
	const HS_ROCK_TUNNEL_B1F_HELIX         
	const HS_ROCK_TUNNEL_B1F_AMBER         
	const HS_ROCK_TUNNEL_B1F_WING          
	const HS_MT_MOON_CRATER_GUARD          
	const HS_DAYCARE_BULBASAUR             
	const HS_GLADE_GZAP_1                  
	const HS_GLADE_GZAP_2                  
	const HS_GLADE_GZAP_3                  
	const HS_GLADE_ITEM1                   
	const HS_GLADE_ITEM2                   
	const HS_GLADE_ITEM3                   
	const HS_GLADE_ITEM4                   
	const HS_CINNABAR_VOLCANO_FLOORS_ITEM  
	const HS_TPP_KRIS                       

	DEF NUM_HS_OBJECTS EQU const_value     ; F6 - FE all go unused.
