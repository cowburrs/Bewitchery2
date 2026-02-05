extends Wall
class_name Pushable


func move(dir, num):
	var old = cell
	for i in range(num):
		var check = get_parent().get_characters(cell + dir)
		if check == null:
			position = get_parent().map_to_local(cell + dir)
		cell = get_parent().local_to_map(position)
	get_parent().change_position(old, cell)
	return old
