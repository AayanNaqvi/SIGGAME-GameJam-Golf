#Author: Aayan Naqvi
#Project: UIC ACM SIG Game Fall 2026 GameJam Golf
#Role: Upon instantiation, teleports the ball to the spawnpoint

extends Node2D


func _ready() -> void:
	var golfBall = get_tree().get_first_node_in_group("Ball")
	
	
	
	golfBall.global_position = global_position

	if "velocity" in golfBall:
		golfBall.velocity = Vector2.ZERO
	


	
