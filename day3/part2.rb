total_joltage = 0

input = File.read('./input').split.map { |bank| bank.chars.map(&:to_i) }

input.each do |bank|
    highest_joltage = []
    start_offset = 0

    while highest_joltage.length < 12
        upper_bound = bank.length - (12 - highest_joltage.length)

        highest_value = 0
        highest_index = 0

        (start_offset.upto(upper_bound)).each do |i|
            if bank[i] > highest_value
                highest_value = bank[i]
                highest_index = i

                if highest_value == 9
                    break
                end
            end
        end

        highest_joltage.append(highest_value)
        start_offset = highest_index + 1
    end

    total_joltage += highest_joltage.join().to_i
end

puts total_joltage
