#Author: Aayan Naqvi
#Project: UIC ACM SIG Game Fall 2026 GameJam Golf
#Role: Controls and physics for the golfball

extends CharacterBody2D

@export_category("Ball Speed and Stuff")
@export var ballSpeed: float
@export var ballFriction: float
@export var bounceNegation: float
@export var maxDistance: float

@export_category("Text")
@export var hitText: Label
var numHits: int

func _ready() -> void:
	SignalBus.ballScored.connect(advanceLevel)
	numHits = 0
	UpdateText()

func advanceLevel(_numberInd: int) -> void:
	numHits = 0
	UpdateText()



func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("mouseClick") and velocity.length() < 25:
		PushBall()
	
	

func _physics_process(delta: float) -> void:
	velocity *= ballFriction

	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		velocity *= bounceNegation
	


func GetMouseVector() -> Vector2:
	var current_position = position
	var vectorFromMouseToBall = get_global_mouse_position() - current_position

	return vectorFromMouseToBall

func PushBall() -> void:
	var ballToMouse = GetMouseVector()
	var distance = min(ballToMouse.length(), maxDistance)
	var ballToMouseNormal = ballToMouse.normalized()

	velocity = -ballToMouseNormal * distance * ballSpeed
	numHits += 1
	UpdateText()

func UpdateText() -> void:
	hitText.text = "Hits: " + str(numHits)
