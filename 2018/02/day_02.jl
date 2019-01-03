function part_1(input)
    twos::Int = 0
    threes::Int = 0

    for word in input
        lettercount = Dict()
        for letter in word
            lettercount[letter] = get(lettercount, letter, 0) + 1
        end
        if 2 in values(lettercount)
            twos += 1
        end
        if 3 in values(lettercount)
            threes += 1
        end
    end
    
    twos * threes
end

function part_2(input)
    results = Dict()
    for word in input
        println("Word: ", word)
        for idx in 1:length(word)
            println("results[$idx]: ", get(results, idx, []))
            if idx == 1
                new_word = word[2:end]
            else
                new_word = word[1:idx-1] * word[idx+1:end]
            end
            println("New word: ", new_word)
            if new_word in get(results, idx, [])
                return new_word
            else
                results[idx] = append!(get(results, idx, []::Array{String, 1}), new_word)
            end
        end
    end
end
