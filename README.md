# gd-flags

- [gd-flags](#gd-flags)
  - [Installation](#installation)
  - [Usage](#usage)
  

## Installation

Clone/Download the repo and copy the `gd-flags/addons/gd-flags` folder into `<your_project>/addons`

## Usage

```py
enum Sample {
    const FLAG_A   = 1 << 0 # 0001
    const FLAG_B   = 1 << 1 # 0010
    const FLAG_C   = 1 << 2 # 0100
    const FLAG_D   = 1 << 3 # 1000
}

var flags = Flags.collect(FLAG_A, FLAG_B)   # 0011

print(Flags.hasf(flags, FLAG_A))   
# Output: true
print(Flags.hasf(flags, FLAG_C))   
# Output: false

Flags.setf(flags, FLAG_D)   # 1011

print(Flags.hasf(flags, FLAG_D))   
# Output: true

Flags.unsetf(flags, FLAG_A) # 1010

print(Flags.hasf(flags, FLAG_A))   
# Output: true

print(Flags.list(Sample, flags))
# Output: [2, 8]
print(Flags.names(Sample, flags))   
# Output: [FLAG_B, FLAG_D]
``````
