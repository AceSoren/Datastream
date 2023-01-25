extends Timer

onready var time = get_node("/root/Node2D/Player/Timer")

var PlayerScene = load("res://Player.tscn")

func _ready():
	pass
	
func respawn(_delta):
	if  PlayerScene.tree_exiting():
		get_tree().call_group("Player", "add_child(PlayerScene)")
