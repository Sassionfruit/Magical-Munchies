class_name AudioStreamPlayer2DWithLoop
extends AudioStreamPlayer2D

# I hate that this is even neccessary.

@export var loop: bool = false

func _ready():
    self.connect("finished", _on_finished)

func _on_finished() -> void:
    if loop:
        play()