extends Pushable


func move(dir, num):
	var old = cell
	for i in range(num):
		var check = get_parent().get_walls(cell + dir)
		if check is Lock:
			check.delete()
			get_parent().unget_walls(old)
			queue_free()
			return
		if check == null:
			position = get_parent().map_to_local(cell + dir)
		cell = get_parent().local_to_map(position)
	get_parent().change_position(old, cell)
