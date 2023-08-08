extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print ("Player Lives")
	# Initialization here
	pass

func _process(delta):
	self.position.x= get_global_mouse_position().x


func _on_Player_area_entered( area ):
	self.queue_free()