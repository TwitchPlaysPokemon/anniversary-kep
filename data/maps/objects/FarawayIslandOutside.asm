FarawayIslandOutside_Object:
	db $2d ; border block

	def_warp_events
	warp_event  6, 35, FARAWAY_FERRY_DOCK, 1
	warp_event  7, 35, FARAWAY_FERRY_DOCK, 1
	warp_event 18,  8, FARAWAY_ISLAND_INSIDE, 1
	warp_event 19,  8, FARAWAY_ISLAND_INSIDE, 2

	def_bg_events
	bg_event  4, 29, 2 ; Sign

	def_object_events
	object_event  3, 29, SPRITE_GREEN, STAY, RIGHT,  1, OPP_BBBBBa, 1

	def_warps_to FARAWAY_ISLAND_OUTSIDE