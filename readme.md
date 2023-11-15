# gd-flags

- [gd-flags](#gd-flags)
  - [Installation](#installation)
  - [Usage](#usage)
  

## Installation

Clone/Download the project into `<your_project>/addons`

## Usage

```py
enum Sample {
    const FLAG_A   = 1 << 0 # 0001
    const FLAG_B   = 1 << 1 # 0010
    const FLAG_C   = 1 << 2 # 0100
    const FLAG_D   = 1 << 3 # 1000
}

var flags = Flags.collect(FLAG_A, FLAG_B)   # 0011

print(Flags.has_flag(flags, FLAG_A))   
# Output: true
print(Flags.has_flag(flags, FLAG_C))   
# Output: false

Flags.set_flag(flags, FLAG_D)   # 1011

print(Flags.has_flag(flags, FLAG_D))   
# Output: true

Flags.unset_flag(flags, FLAG_A) # 1010

print(Flags.has_flag(flags, FLAG_A))   
# Output: true

print(Flags.get_flags(flags))   
# Output: [2, 8]
print(Flags.get_flags_names(Sample, flags))   
# Output: [FLAG_B, FLAG_D]
```