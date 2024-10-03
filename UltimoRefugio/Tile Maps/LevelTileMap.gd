class_name  LevelTileMap extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	LevelManage.ChangeTilemapBounds(GetTilemapBounds())
	pass # Replace with function body.

func GetTilemapBounds() -> Array[Vector2]:
	var bounds : Array[Vector2]=[]
	bounds.append(
		Vector2(get_used_rect().position*cell_quadrant_size)
	)
	bounds.append(
		Vector2(get_used_rect().end * cell_quadrant_size)
	)
	return bounds
