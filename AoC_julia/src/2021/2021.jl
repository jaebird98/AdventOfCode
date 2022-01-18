module 2021

import AoC_julia

solved_days = 1:1

# 2021 source files
for day in solved_days
    include(joinpath(@__DIR__, "Day", string(day, pad=2), ".jl"))
end

end # end module
