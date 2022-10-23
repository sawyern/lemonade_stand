extends Node


func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	for i in range(0, 100):
		_load_sprite("Musubi", rng.randf_range(200, 800), 0)


func _load_sprite(sprite, x, y):
	var newSprite = load("res://Sprites/" + sprite + ".tscn").instance()
	newSprite.position.x = x
	newSprite.position.y = y
	self.add_child(newSprite)
	print("Loaded Sprite " + sprite + " at " + x as String + ", " + y as String)
	return newSprite	

	


func _on_Area2D_body_entered(body):
	print("collision ")
