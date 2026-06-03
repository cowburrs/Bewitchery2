extends Wall
class_name Lock
func delete():
	get_parent().unget_walls(cell)
	queue_free()
	
