module Day01

using AoC_julia

function solve(input::String)
    reports = parse.(Int, split(input))
    part1 = count(diff(reports) .> 0)
    part2 = count(diff(reports[i]+reports[i+1]+reports[i+2] for i = 1:length(reports)-2) .> 0)
    return part1, part2
end
