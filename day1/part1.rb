current_dial = 50
times_hit_zero = 0

input = File.read('./input').split

input.each do |i|
    direction = i[0]
    distance  = i[1..i.length]

    case direction
    when 'R'
        distance.to_i.times do |d|
            current_dial += 1

            if current_dial == 100
                current_dial = 0
            end
        end

    when 'L'
        distance.to_i.times do |d|
            current_dial -= 1

            if current_dial == -1
                current_dial = 99
            end
        end
    end

    if current_dial == 0
        times_hit_zero += 1
    end
end

puts "hit zero #{times_hit_zero} times"
