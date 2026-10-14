extends Node2D

enum spr{ DIRT, GRASS, MTN_FL, MTN_WL, STONE_FL, STONE_WL, WOOD_FL, WOOD_WL }
var sprsheet = []

var MAPLEN = 128
var map_tiles = []

func draw_tilemap():
	for ytile in MAPLEN:
		for xtile in MAPLEN:
			var tile = Sprite2D.new()
			tile.texture = sprsheet[map_tiles[ytile][xtile]]
			tile.position = Vector2(xtile*16, ytile*16)
			$tilemap.add_child(tile)

func _ready() -> void:
	#	TODO more sophisticated/selective loading routine
	sprsheet.append(preload("res://assets/tiles/dirt.png"))
	sprsheet.append(preload("res://assets/tiles/grass.png"))
	sprsheet.append(preload("res://assets/tiles/mtn_fl.png"))
	sprsheet.append(preload("res://assets/tiles/mtn_wl.png"))
	sprsheet.append(preload("res://assets/tiles/stone_fl.png"))
	sprsheet.append(preload("res://assets/tiles/stone_wl.png"))
	sprsheet.append(preload("res://assets/tiles/wood_fl.png"))
	sprsheet.append(preload("res://assets/tiles/wood_wl.png"))

	#	DEBUG - fill memoy map with 0 dirt tiles 
	for ytile in MAPLEN:
		#	populate whole y row
		var curr_row = []
		for xtile in MAPLEN:
			curr_row.append(spr.DIRT)
		map_tiles.append(curr_row)
	map_tiles[3][3] = spr.STONE_WL
	map_tiles[4][3] = spr.STONE_WL
	map_tiles[5][3] = spr.STONE_WL
	map_tiles[3][4] = spr.STONE_WL
	map_tiles[5][4] = spr.STONE_WL
	map_tiles[3][5] = spr.STONE_WL
	map_tiles[5][5] = spr.STONE_WL

	# map drawing func
	draw_tilemap()

func _process(_delta: float) -> void:
	pass
