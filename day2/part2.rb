invalid_ids = []
final_sum   = 0

input = File.read('./input').split(',')

input.each do |i|
    start_id, end_id = i.split('-').map(&:to_i)

    (start_id..end_id).each do |n|
        s = n.to_s

        is_invalid = if s.chars.uniq.length == 1 && s.length > 1
            true
        elsif s.length.even? && s.length > 1
            s[0...s.length/2] == s[s.length/2..-1] || (s[0..1] * (s.length / 2)) == s if s.length > 2
        elsif s.length.odd? && s.length > 1
            (s[0..2] * (s.length / 3)) == s if s.length > 3
        end

        if is_invalid
            invalid_ids.push(n)
            final_sum += n
        end
    end
end

puts final_sum
