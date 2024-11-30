class_name Array_


var value: Array


func _init(array: Array):
	value = array
	

func stringified(separator: String = "") -> String:
	var string = ""
	var size = value.size()
	for i in size:
		string += String(value[i]) + (separator if i < size - 1 else "")
	
	return string
