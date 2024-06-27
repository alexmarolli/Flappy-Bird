extends Node2D

export (float) var offset_x
export (int) var lim_min
export (int) var lim_max

var list_tub = []


func _ready():
	randomize()
	list_tub = get_tree().get_nodes_in_group("tubo")
	for i in list_tub:
		_randi_y(i)


func _reposition():
	list_tub[0].global_position.x = list_tub[-1].global_position.x  + offset_x
	list_tub.push_back(list_tub.pop_front())
	_randi_y(list_tub[-1])


func _randi_y(tubo):
	tubo.global_position.y = randi()% lim_max + lim_min 
