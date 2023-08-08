extends Area2D

var speed = 0

var Health = 3

func _process(delta):
	self.position.y+= speed
	if Health < 1:
		self.queue_free()

func _on_projectile_area_entered( area ):
	self.Health -=1
	#when the laser hits, it should reduce the health by 1/3
	if self.Health == 1 and self.Health <= 0:
		self.queue_free()
	

func _on_Missile_area_entered( area ):
	self.Health-=3
	if self.Health == 1 and self.Health <= 0:
		self.queue_free()
	
func _on_Enemy_area_entered( area ):
	self.queue_free()
	

func _on_Player_area_shape_entered( area_id, area, area_shape, self_shape ):
	$"../GameOverSprite".visible = true

