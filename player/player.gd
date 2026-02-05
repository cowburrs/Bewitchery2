extends Node2D


var cell
var moves = 0

func move(dir):
	var check = get_parent().get_characters(cell + dir)
	if check == null:
		position = get_parent().map_to_local(cell + dir)
		cell = get_parent().local_to_map(position)
		return null
	return check

func move_rec(dir):
	moves = 0
	while move(dir) == null:
		moves += 1
	move(dir).move(dir, moves)
	if moves > 0:
		get_parent().moves -= 1
	return moves

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cell = get_parent().local_to_map(position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Special"):
		print("SPECIAL")
	if Input.is_action_just_pressed("Restart"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("Right"):
		move_rec(Vector2i.RIGHT)
	elif Input.is_action_just_pressed("Left"):
		move_rec(Vector2i.LEFT)
	elif Input.is_action_just_pressed("Up"):
		move_rec(Vector2i.UP)
	elif Input.is_action_just_pressed("Down"):
		move_rec(Vector2i.DOWN)
