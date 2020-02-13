[![Build Status](https://travis-ci.com/milankl/ScientificColourMaps.jl.svg?branch=master)](https://travis-ci.com/milankl/ScientificColourMaps.jl)

# ScientificColourMaps v6
by [Fabio Crameri](http://www.fabiocrameri.ch/) wrapped into a Julia package for [PyPlot](https://github.com/JuliaPy/PyPlot.jl).

## Usage

```julia
julia> using Pyplot, ScientificColourMaps

julia> pcolormesh(rand(100,100),cmap=batlow)
```

## Installation
Requires `PyPlot` to be properly set up. Then do
```julia
julia> ] add https://github.com/milankl/ScientificColourMaps.jl
```
