extends Node

export var delay = 1
export(PackedScene) var egg

var timer = 0

func _ready():
	set_process(true)

func _process(delta):
	timer += delta
	if(timer > delay):
		timer = 0
		create_egg()

func create_egg():
	print("Creating egg")
	var e = egg.instance()
	e.add_to_group("eggs")
	add_child(e)
	e.set_pos(Vector2(rand_range(0, get_viewport().get_visible_rect().size.x),0))