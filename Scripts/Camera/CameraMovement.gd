#Author: Aayan Naqvi
#Project: UIC ACM SIG Game Fall 2026 GameJam Golf
#Role: Added to camera to follow the player

extends Camera2D


@export_category("General Logic")
@export var camSpeedX: float
@export var camSpeedY: float

@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	position = player.position
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = move_toward(position.x, player.position.x, camSpeedX);
	position.y = move_toward(position.y, player.position.y, camSpeedY);

