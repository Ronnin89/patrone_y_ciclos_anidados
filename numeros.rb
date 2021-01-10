n = ARGV[0].to_i

def letra_o(x)
    for i in 1..x do
        space = "\s"
        caracter = "+"
        puts caracter*x if i == 1
        puts caracter + (space*(x - 2)) + caracter if i != 1 && i != x
        puts caracter*x if i == x
    end
end

def letra_i(x)
    for i in 1..x do
        space = "\s"
        caracter = "+"
        puts caracter*x if i == 1
        puts (space*(x / 2)) + caracter if i != 1 && i != x
        puts caracter*x if i == x
    end
end


letra_i(n)