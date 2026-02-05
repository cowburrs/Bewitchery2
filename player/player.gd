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

func move_rec(dir, rec = true):
	if rec:
		moves = 0
	var check = move(dir)
	if check == null:
		moves += 1
		move_rec(dir, false)
	else:
		check.text += moves
		pass
	return moves


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cell = get_parent().local_to_map(position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Special"):
		print("SPECIAL")
	if Input.is_action_just_pressed("Right"):
		$RichTextLabel.text = str(move_rec(Vector2i.RIGHT))
	elif Input.is_action_just_pressed("Left"):
		$RichTextLabel.text = str(move_rec(Vector2i.LEFT))
	elif Input.is_action_just_pressed("Up"):
		$RichTextLabel.text = str(move_rec(Vector2i.UP))
	elif Input.is_action_just_pressed("Down"):
		$RichTextLabel.text = str(move_rec(Vector2i.DOWN))
	pass
