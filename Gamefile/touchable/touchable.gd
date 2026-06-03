extends Node2D
class_name Touchable

var cell
var moves = int() 

func touch():
	moves += 1
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cell = get_parent().local_to_map(position)
	get_parent().set_touchables(cell, self)
	z_index = -100;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$RichTextLabel.text = str(moves)
	pass
