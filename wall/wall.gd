extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var cell: Vector2i = get_parent().local_to_map(position)
	$RichTextLabel.text = str(cell) 
	get_parent().setCharacters(cell, self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
