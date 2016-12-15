extends RigidBody2D


func _ready():
	pass




func _on_egg_body_enter( body ):
	if(body.get_name() == "ground"):
		print("ground hit")
		queue_free()
