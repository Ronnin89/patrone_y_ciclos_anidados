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

def letra_z(x)
    caracter = "+"
    space = "\s"
    space_cont = 0 
    space_size = x - 2

    puts caracter*x 
    until (space_size == space_cont) do
        puts (space * space_size) + caracter
        space_size -= 1
    end
    puts caracter*x
end

letra_o(n)
letra_i(n)
letra_z(n)