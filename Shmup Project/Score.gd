extends Label

var Score = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func increase_score():
	Score += 10
	self.text = "Score:" + str(Score)