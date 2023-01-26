extends Node2D

var Player = load ("res://Player.tscn")
onready var PlayerInstance = Player.instance()
onready var Respawn = Timer.new()

func _ready():
	pass
	
func respawn(_delta):
	if Player.tree_exited():
		Respawn.connect("timeout",self,"_on_timer_timeout")
		Respawn.set_wait_time(1)
		add_child(Respawn)
		Respawn.start()

func _on_timer_timeout():
	Respawn.stop()
	add_child(Player)
	Respawn.queue_free()
