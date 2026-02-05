extends Pushable


func move(dir, num):
	var old = super(dir, num)
	if (old == cell) and (num > 0):
		queue_free()
		pass

func _process(delta: float) -> void:
	super(delta)
	pass
