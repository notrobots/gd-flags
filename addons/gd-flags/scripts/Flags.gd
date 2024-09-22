class_name Flags

# Sets the given flag on the given value and returns the new value.
static func setf(value: int, flag: int) -> int:
	return value | flag

# Unsets the given flag on the given value and returns the new value.
static func unsetf(value: int, flag: int) -> int:
	return value & ~flag

# Sets the given bit on the given value and returns the new value.
static func setb(value: int, bit: int) -> int:
	return setf(value, 1 << bit)

# Unsets the given bit on the given value and returns the new value.
static func unsetb(value: int, bit: int) -> int:
	return unsetf(value, 1 << bit)

# Creates a flag with the given index
static func flag(index: int) -> int:
	return 1 << index

# Returns whether or not the given flag is set on the value.
static func hasf(value: int, flag: int) -> bool:
	return value & flag

# Returns whether or not the given bit is set on the value.
static func hasb(value: int, bit: int) -> bool:
	return hasf(value, 1 << bit)

# Returns all set flags on the given value.
static func list(flags: Dictionary, value: int) -> Array:
	var _flags = []

	for flag in _flags:
		if hasf(value, flags[flag]):
			_flags.append(flags[flag])

	return _flags

# Returns the names of all set flags on the given value.
static func names(flags: Dictionary, value: int) -> Array:
	var names = []

	for flag in flags:
		if hasf(value, flags[flag]):
			names.append(flag)

	return names

# Groups the given flags.
static func collect(flags: Array[int]) -> int:
	var value = 0

	for flag in flags:
		value = setf(value, flag)

	return value
