extends TileMapLayer


var characters = {}


func setCharacters(key, value):
	characters[key] = value

func getCharacters(key):
	return characters[key]	


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Special"):
		print(characters)
	pass
