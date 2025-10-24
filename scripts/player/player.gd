extends CharacterBody2D

class_name Player

@export var speed : float = 100000.0
@export var firction : float = 10.0
@export var jump_velocity : float = -400.0

var timer : float = 1


func _physics_process(delta: float) -> void:
	timer += delta

	if timer >= 1 and Globals.playerHealth > 0:
		Globals.score += 1
		timer = 0

	if Input.is_action_pressed("left"):
		velocity.x = -speed * delta
	elif Input.is_action_pressed("right"):
		velocity.x = speed * delta
	else:
		velocity.x = lerpf(velocity.x, 0, delta * firction)

	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("leaf"):
		if !Globals.isPlayerSafe:
			Globals.playerHealth -= 20
		else:
			Globals.isPlayerSafe = false
			print("lol")
