extends Node2D

var score_threshold = 20
var b = 0
var backgrounds = [
	preload("res://Assets/paper-background.png"),
	preload("res://Assets/shelf.png"),
	preload("res://Assets/woods.jpg")
]





func _physics_process(_delta):
	if Global.score > score_threshold*(b+1):
		var B2 = Sprite.new()
		B2.centered = false
		B2.texture = backgrounds[wrapi(b, 0, backgrounds.size())]
		B2.name = "B2"
		add_child(B2)
		move_child(B2, 0)
		
