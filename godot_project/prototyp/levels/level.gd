extends Node3D

@export_multiline var puzzle_text: String = ""

@onready var audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer
@onready var character: Player = %Character


var player_original_position: Vector3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audio_stream_player.play()
	GameManager.final_text = puzzle_text
	player_original_position = character.global_position
	
func _physics_process(_delta: float) -> void:
	if character.global_position.y < -5.0:
		character.global_position = player_original_position
		
