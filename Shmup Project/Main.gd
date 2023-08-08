extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print ("hello")
	# Initialization here
	pass
func _process(delta):
	if Input.is_action_just_pressed("fire_projectile") and has_node("Player"):
		var newProjectile = $Projectile.duplicate()
		self.add_child(newProjectile)
		newProjectile.position = $Player.position
	if Input.is_action_just_pressed("fire_missile") and has_node("Player"):
		var newMissile = $Missile.duplicate()
		self.add_child(newMissile)
		newMissile.position = $Player.position
		
	if Input.is_action_just_pressed("reset_game"):
		#restart game
		get_tree().reload_current_scene()

func _on_EnemyTimer_timeout():
	var newEnemy = $Enemy.duplicate()
	self.add_child(newEnemy)
	newEnemy.position.x = rand_range (0,480)
	newEnemy.position.y = -100
	newEnemy.speed = rand_range (1, 5)
	newEnemy.Health = 1

func _on_BossTimer_timeout():
	var newBossEnemy = $BossEnemy.duplicate()
	self.add_child(newBossEnemy)
	newBossEnemy.position.x = rand_range (0,480)
	newBossEnemy.position.y = -100
	newBossEnemy.speed = rand_range (.5, 1)