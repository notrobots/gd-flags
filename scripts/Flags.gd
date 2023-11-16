class_name Flags

# Unsets the given flag on the given value and returns the new value.
static func unset_flag(value: int, flag: int) -> int:
	return value & ~flag

# Sets the given flag on the given value and returns the new value.
static func set_flag(value: int, flag: int) -> int:
	return value | flag

# Creates a flag with the given index
static func flag(index: int) -> int:
	return 1 << index

# Returns whether or not the given flag is set on the value.
static func has_flag(value: int, flag: int) -> bool:
	return value & flag

# Returns whether or not all flags on a are also set on b
static func has_flags(a: int, b: int) -> bool:
	for flag in get_flags(a):
		if not has_flag(b, flag):
			return false
	return true

# Returns all set flags on the given value.
static func get_flags(value: int) -> Array:
	var flags = []

	for i in range(get_value_length(value)):
		var flag = 1 << i

		if has_flag(value, flag):
			flags.append(flag)

	return flags

# Returns the names of all set flags on the given value.
static func get_flags_names(flags: Dictionary, value: int) -> Array:
	var bits = get_flags(value)
	var names = []

	for bit in bits:
		var name = flags.find_key(bit)

		if name:
			names.append(name)

	return names

# Groups the given flags.
static func collect(flags: Array[int]) -> int:
	var value = 0

	for flag in flags:
		value = set_flag(value, flag)

	return value

# Returns the given value's length in base 2.
static func get_value_length(value: int) -> int:
	if value > 64 && value % 2 != 0:
		return floor(log(value) / log(2)) + 2
	else:
		return floor(log(value) / log(2)) + 1
