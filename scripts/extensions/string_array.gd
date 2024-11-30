class_name StringArray_


var value: Array[String]


func _init(array: Array[String]):
	value = array


static func from_packed_array(packed_array: PackedStringArray) -> StringArray_:
	var array: Array[String] = []
	for string in packed_array:
		array.append(string)
	return StringArray_.new(array)

	
static func from_string_into_chars(string: String) -> StringArray_:
	var chars: Array[String] = []
	for char in string.split(""):
		chars.append(char)
	return StringArray_.new(chars)

	
func stringified(separator: String = "") -> String:
	return Array_.new(value).stringified(separator)


func normalized_elements() -> Array[String]:
	var normalized_elements: Array[String] = []
	for element in value:
		normalized_elements.append(String_.new(element).normalized())
	return normalized_elements
