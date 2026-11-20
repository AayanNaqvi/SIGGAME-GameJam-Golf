#Author: Aayan Naqvi
#Project: UIC ACM SIG Game Fall 2026 GameJam Golf
#Role: Added to the flag node to register when the ball collides with it

extends Area2D

@export var currentLevel: int


func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Ball"):
		SignalBus.ballScored.emit(currentLevel)
