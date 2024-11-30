class_name Button_ extends Button


var enabled: bool:
	get: return !disabled
	set(value): set_enabled(self, value)


static func set_enabled(button: Button, value: bool) -> void:
	button.disabled = !value
	button.focus_mode = Control.FOCUS_ALL if value else Control.FOCUS_NONE
	
