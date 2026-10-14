extends Node2D

enum spr{ GRASS }
var sprsheet = []

var MAPLEN = 128
var map_tiles = []

func _ready() -> void:
	#	TODO more sophisticated/selective loading routine
	sprsheet.append(preload("res://assets/tiles/grass.png"))

	#	DEBUG - fill memoy map with 0 grass tiles 
	for ytile in MAPLEN:
		#	populate whole y row
		var curr_row = []
		for xtile in MAPLEN:
			curr_row.append(spr.GRASS)
		map_tiles.append(curr_row)

	# map drawing func
	for ytile in MAPLEN:
		for xtile in MAPLEN:
			var tile = Sprite2D.new()
			tile.texture = sprsheet[map_tiles[ytile][xtile]]
			tile.position = Vector2(xtile*64, ytile*64)
			$tilemap.add_child(tile)

func _process(_delta: float) -> void:
	pass
