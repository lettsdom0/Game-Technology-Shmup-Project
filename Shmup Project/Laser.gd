extends Area2D



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	self.position.y-=3
	
	

func _on_Projectile_area_entered( area ):
	$"../Enemy".Health-=3
	$"../BossEnemy".Health-=3
	#when the laser hits, it should reduce the health by 1/3
	if $"../Enemy".Health == 1 and $"../Enemy".Health <= 0:
		$"../Enemy".queue_free()
	if $"../BossEnemy".Health == 1 and $"../BossEnemy".Health <= 0:
		$"../BossEnemy".queue_free()
	$"../ScoreLabel".increase_score()
	print ($"../ScoreLabel".Score)