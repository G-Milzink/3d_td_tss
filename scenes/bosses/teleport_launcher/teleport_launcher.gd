extends CharacterBody3D

var lookDirection : Vector3
var player:CharacterBody3D

var nrOfMissiles : int = 6
var canTeleport : bool = false

@onready var radar: Node3D = $Radar


func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")

func _process(delta: float) -> void:
	if nrOfMissiles <= 0:
		if !canTeleport:
			canTeleport = true
	rotateTowardsPlayer()

func rotateTowardsPlayer():
	player = get_tree().get_first_node_in_group("player")
	if player:
		look_at_from_position(position, player.position)
