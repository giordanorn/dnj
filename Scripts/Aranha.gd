extends Node2D

var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.animation = 'walk'
		position.x -= speed * delta
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite.animation = 'walk'
		position.x += speed * delta
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite.animation = 'walk'
		position.y -= speed * delta
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.animation = 'walk'
		position.y += speed * delta
	else:
		$AnimatedSprite.animation = 'idle'
	pass
