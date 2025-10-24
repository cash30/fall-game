extends Marker2D
@export var leaf:   PackedScene
@export var coin:   PackedScene
@export var medKit: PackedScene
@export var forceField: PackedScene
const timeBetweenLeaf = 0.5
const timeBetweenCoin = 3
const timeBetweenMedKit = 5
const timeBetweenForceField = 7
var  timerLeaf = 1
var timerCoin = 2
var  timerMedKit = 1
var  timerforceField = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	tickShootLeaf(delta)
	tickShootCoin(delta)
	tickShootMedKit(delta)
	tickShootForceField(delta)
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
		
func tickShootForceField(delta) -> void:
	timerforceField -= 1.0 * delta
	if timerforceField <= 0:
		shootForceField()
		timerforceField = timeBetweenForceField
		
