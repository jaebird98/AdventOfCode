module AoC_julia

import 2021

export solve

function readinput(year::Integer, day::Integer)
    @assert day ∈ 1:25 "Planning to code until new year?"
    day = string(day, pad=2)
    year = string(year)
    path = joinpath(@__DIR__, "..", "..", "data", year, "day$day.txt")
    return read(path, String)
end
export readinput


function solve(year::Integer, day::Integer)
    year_sym = Symbol(string(year))
    day_sym = Symbol("Day", string(day, pad=2))
    
    @eval
    begin
        return AoC_julia.$year_sym.$day_sym.solve(readinput(year, day))
    end
end

solve(year::Integer, day::Integer, part::Integer) = solve(year::Integer, day::Integer)[part]

end # module
