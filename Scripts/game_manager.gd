#Author: Aayan Naqvi
#Project: UIC ACM SIG Game Fall 2026 GameJam Golf
#Role: General GameManager that impacts the overall gameplay loop


extends Node2D

var levelPool: Array[PackedScene] = [
	preload("res://Courses/basic_course_1.tscn"),
	preload("res://Courses/basic_course_2.tscn"),
	preload("res://Courses/basic_course_3.tscn"),
	preload("res://Courses/Course4.tscn"),
	preload("res://Courses/Course5.tscn"),
	preload("res://Courses/Heart6.tscn"),
	preload("res://Courses/RingAround7.tscn"),
	preload("res://Courses/Rubble8.tscn"),
	preload("res://Courses/Bishop9.tscn"),
	preload("res://Courses/Final10.tscn")
]
var currentLevel: int
var currentLevelScene: Node2D

func _ready() -> void:
	SignalBus.ballScored.connect(advanceLevel)
	
	currentLevel = 0;
	var firstLevel: PackedScene = levelPool[0]

	currentLevelScene = firstLevel.instantiate()
	currentLevelScene.position = Vector2(0,0)

	add_child(currentLevelScene)

func advanceLevel(currentLevelInd: int) -> void:
	currentLevel = currentLevelInd

	if(currentLevel + 1 >= levelPool.size()):
		currentLevel = 0;
	else:
		currentLevel += 1
	
	currentLevelScene.queue_free()
	createNewLevel(currentLevel)

func createNewLevel(levelInd: int) -> void:
	var nextLevel: PackedScene = levelPool[levelInd]

	currentLevelScene = nextLevel.instantiate()
	currentLevelScene.position = Vector2(0,0)
	add_child(currentLevelScene)


	









