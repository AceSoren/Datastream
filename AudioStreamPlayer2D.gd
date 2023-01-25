extends AudioStreamPlayer2D

var CorrectSound = preload("res://OST/12922_newgrounds_jermai.mp3")

func _process(_delta):
		if !self.is_playing():
			self.stream = CorrectSound
			self.play()
