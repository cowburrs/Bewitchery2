extends TileMapLayer


@export
var moves: int

var characters = {}


func set_characters(key, value):
	characters[key] = value

func get_characters(key):
	return characters.get(key, null)

func change_position(old, new):
	if new != old:
		characters[new] = characters[old]
		characters.erase(old)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Special"):
		print(characters)
	pass
