n = ARGV[0].to_i

(1..n).each do |i|
    (1..i).each do |x|
        print x
    end
    print " "
end
puts