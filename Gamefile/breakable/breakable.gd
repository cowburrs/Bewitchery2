extends Pushable


func move(dir, num):
	var old = cell
	super(dir, num)
	if (old == cell) and (num > 0):
		get_parent().unget_walls(cell)
		queue_free()
		pass

func _process(delta: float) -> void:
	super(delta)
	pass
