extends TileMapLayer


@export
var moves: int
@export
var next_level: PackedScene

static var characters = {}
static var touchables = {}


func set_walls(key, value):
	characters[key] = value

func get_walls(key):
	return characters.get(key, null)

func unget_walls(key):
	characters.erase(key)

func change_position(old, new):
	if new != old:
		characters[new] = characters[old]
		characters.erase(old)

func set_touchables(key, value):
	touchables[key] = value

func get_touchables(key):
	return touchables.get(key, null)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Special"):
		print(touchables)
	pass
