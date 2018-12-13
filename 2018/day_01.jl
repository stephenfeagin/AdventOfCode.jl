#! /usr/bin/julia
# 2018 Day 1: Chronal Calibration

if length(ARGS) != 1
    println("Please enter either an input file or 'help'")
    exit(1)
elseif !isfile(ARGS[1])
    if ARGS[1] == "help"
        println("usage: julia day_01.jl [file]")
        println("Runs Advent of Code 2018 Day 1.")
        exit(0)
    elseif ARGS[1] == "test"
        const TESTING = true
    else
        println("Please enter either an input file or 'help'")
        exit(1)
    end
else
    const TESTING = false
end

function parse_list(fname)
    [parse(Int, line) for line in readlines(fname)]
end

function part_1(fname)
    data = parse_list(fname)
    sum(data)
end

function part_2(fname)
    data = parse_list(fname)
    frequency_list = [0]
    current_frequency = 0

    while true
        for change in data
            current_frequency += change
            if in(current_frequency, frequency_list)
                return current_frequency
            end
            append!(frequency_list, current_frequency)
        end
    end
end

if !TESTING 
    println("Part 1:")
    println(part_1(INPUT))
    
    println("Part 2:")
    println(part_2(INPUT))
    exit(0)
else

end

