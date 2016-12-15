extends KinematicBody2D

func _ready():
	set_process(true)

func _process(delta):
	var mouse_pos = get_viewport().get_mouse_pos()
	var this_pos = get_pos()
	this_pos.x = mouse_pos.x
	set_pos(this_pos)


func _on_Area2D_body_enter( b ):
	if(b.is_in_group("eggs")):
		print("Dropped inside")
		b.queue_free()
