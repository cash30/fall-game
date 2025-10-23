extends CharacterBody2D
var timer = 1

const SPEED = 100000.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	timer -= 1 * delta
	if timer <= 0 and Globals.playerHealth > 0:
		Globals.score += 1
		timer = 1

	if Input.is_action_pressed("left"):
			velocity.x = -SPEED * delta
	elif Input.is_action_pressed("right"):
			velocity.x = SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("leaf"):
		Globals.playerHealth -=20
