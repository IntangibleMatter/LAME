extends Resource
class_name LameMusic

export var beatsPerBar : float = 4
export var bpm : float = 120 #beats per minute of song
var spb : float #time each beat takes


func _ready() -> void:
	spb = 60 / bpm
