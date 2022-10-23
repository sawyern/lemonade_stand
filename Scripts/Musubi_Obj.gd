extends KinematicBody2D

var speed = 400
var velocity = Vector2()
const GRAVITY = 200
var direction = Vector2()

func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	velocity.x = rng.randf_range(50, 200)
	pass

func _physics_process(delta):
	velocity = speed * delta * direction
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity)
	rotate(-.01)
	if get_slide_count() > 0:
		var collision = get_slide_collision(0)
		if collision != null:
			direction = direction.bounce(collision.normal) # do ball bounce


func _stop():
	speed = 0
