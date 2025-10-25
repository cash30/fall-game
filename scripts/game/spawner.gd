extends Marker2D
@export var leaf:   PackedScene
@export var coin:   PackedScene
@export var medKit: PackedScene
@export var forceField: PackedScene
var timeBetweenLeaf = 0.5
var timeBetweenCoin = 4
var timeBetweenMedKit = 5
var timeBetweenForceField = 7
var  timerLeaf = 1
var timerCoin = 2
var  timerMedKit = 1
var  timerforceField = 1
var fallSpeedIncreaseTimer = 0
var minFallSpeed = 20
var maxFallSpeed = 110

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	tickShootLeaf(delta)
	tickShootCoin(delta)
	tickShootMedKit(delta)
	tickShootForceField(delta)
	fallSpeedIncreaseTimer += 1 * delta
	if fallSpeedIncreaseTimer >= 1:
		print("increasing fall speed")
		minFallSpeed += 1
		maxFallSpeed += 1
		if timeBetweenLeaf > 0.1:
			timeBetweenLeaf -= 0.005
		fallSpeedIncreaseTimer = 0
		pass
	pass

#leaf
func shootLeaf() -> void:
	var offset = randi_range(-300, 300)
	var leafInst = leaf.instantiate()
	leafInst.position.x = offset
	add_child(leafInst)
	
func tickShootLeaf(delta) -> void:
	timerLeaf -= 1.0 * delta
	if timerLeaf <= 0:
		shootLeaf()
		timerLeaf = timeBetweenLeaf
	
#Coin
func shootCoin() -> void:
	var offset = randi_range(-300, 300)
	var coinInst = coin.instantiate()
	coinInst.position.x = offset
	add_child(coinInst)
	timeBetweenCoin = randf_range(3, 5)
	
func tickShootCoin(delta) -> void:
	timerCoin -= 1.0 * delta
	if timerCoin <= 0:
		shootCoin()

		timerCoin = timeBetweenCoin
	
#Med kit
func shootMedKit() -> void:
	var offset = randi_range(-300, 300)
	var medKitInst = medKit.instantiate()
	medKitInst.position.x = offset
	add_child(medKitInst)
	timeBetweenMedKit = randf_range(4, 6)

		
func tickShootMedKit(delta) -> void:
	timerMedKit -= 1.0 * delta
	if timerMedKit <= 0:
		shootMedKit()
		timerMedKit = timeBetweenMedKit
		
#Force field
func shootForceField() -> void:
	var offset = randi_range(-300, 300)
	var forceFealdInst = forceField.instantiate()
	forceFealdInst.position.x = offset
	add_child(forceFealdInst)	
	timeBetweenForceField = randf_range(5, 8)

		
func tickShootForceField(delta) -> void:
	timerforceField -= 1.0 * delta
	if timerforceField <= 0:
		shootForceField()
		timerforceField = timeBetweenForceField

func getMinFallSpeed() -> int:
	return minFallSpeed
	
func getMaxFallSpeed() -> int:
	return maxFallSpeed
