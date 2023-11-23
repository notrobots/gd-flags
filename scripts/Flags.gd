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
static func get_flags(_flags: Dictionary, value: int) -> Array:
	var flags = []

	for flag in _flags:
		if has_flag(value, _flags[flag]):
			flags.append(_flags[flag])

	return flags

# Returns the names of all set flags on the given value.
static func get_flags_names(_flags: Dictionary, value: int) -> Array:
	var names = []

	for flag in _flags:
		if has_flag(value, _flags[flag]):
			names.append(flag)

	return names

# Groups the given flags.
static func collect(flags: Array[int]) -> int:
	var value = 0

	for flag in flags:
		value = set_flag(value, flag)

	return value
