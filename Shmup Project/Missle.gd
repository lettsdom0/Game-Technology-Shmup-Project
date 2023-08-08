extends Area2D

func _process(delta):
	self.position.y-=1
	
	

func _on_Missile_area_entered( area ):
	$"../newEnemy".Health-=1
	$"../newBossEnemy".Health-=1
	#when the laser hits, it should reduce the health by 1/3
	if $"../newEnemy".Health == 1 and $"../newEnemy".Health <= 0:
		$"../newEnemy".queue_free()
	if $"../newBossEnemy".Health == 1 and $"../newBossEnemy".Health <= 0:
		$"../newBossEnemy".queue_free()
	$"../ScoreLabel".increase_score()
	print ($"../ScoreLabel".Score)
