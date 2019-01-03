using Test

include("day_02.jl")

@testset "Test Part 1" begin
    @test part_1([
        "abcdef",
        "bababc",
        "abbcde",
        "abcccd",
        "aabcdd",
        "abcdee",
        "ababab"
    ]) == 12 
end

@testset "Test Part 2" begin
    @test part_2([
        "abcde",
        "fghij",
        "klmno",
        "pqrst",
        "fguij",
        "axcye",
        "wvxyz"
    ]) == "fgij"
end
