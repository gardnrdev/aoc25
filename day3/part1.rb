total_joltage = 0

input = File.read('./input').split

input.each do |bank|
    s = bank.to_s
    combinations = []
    highest_joltage = 0

    s.chars.combination(2) { |c| combinations.push(c) }

    combinations.each do |tup|
        if tup.join.to_i > highest_joltage
            highest_joltage = tup.join.to_i
        end
    end

    total_joltage += highest_joltage
end

puts total_joltage
