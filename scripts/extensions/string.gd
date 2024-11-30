class_name String_


var value: String


func _init(string: String):
	value = string


func has_char(char: String) -> bool:
	return first_index(char) != -1


func first_index(char: String) -> int:
	for i in value.length():
		if char == value[i]:
			return i
	return -1
	

func normalized() -> String:
	var normalized_string = ""
	for char in value:
		normalized_string += normalized_char(char)
	return normalized_string


static func normalized_char(char: String) -> String:
	match char:
		"á": return "a"
		"à": return "a"
		"é": return "e"
		"è": return "e"
		"í": return "i"
		"ì": return "e"
		"ó": return "o"
		"ò": return "e"
		"ú": return "u"
		"ù": return "e"
		"ü": return "u"
		_: return char
