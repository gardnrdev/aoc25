invalid_ids = []
final_sum   = 0

input = File.read('./test_input').split(',')

input.each do |i|
    start_id, end_id = i.split('-').map(&:to_i)

    (start_id..end_id).each do |n|
        s = n.to_s

        is_invalid = if s.length.even?
            s[0...s.length/2] == s[s.length/2..-1]
        elsif s.chars.uniq.length == 1
            true
        elsif s.length.odd?

        end

        if is_invalid
            puts n
            final_sum += n
        end
    end
end

# puts final_sum
