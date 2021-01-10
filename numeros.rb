n = ARGV[0].to_i

def letra_o(x)
    for i in 1..x do
        space = "\s"
        character = "*"
        puts character*x if i == 1
        puts character + (space*(x - 2)) + character if i != 1 && i != x
        puts character*x if i == x
    end
end

def letra_i(x)
    for i in 1..x do
        space = "\s"
        character = "*"
        puts character*x if i == 1
        puts (space*(x / 2)) + character if i != 1 && i != x
        puts character*x if i == x
    end
end

def letra_z(x)
    character = "*"
    space = "\s"
    cont = 0 
    space_size = x - 2

    puts character*x 
    until (space_size == cont) do
        puts (space * space_size) + character
        space_size -= 1
    end
    puts character*x
end

def letra_x(x)
    character = "*"
    space = "\s" 
    if x.odd?
        cont = x - 2
    else
        cont = ( x - 2 ) + 1
    end
    sum = 0
    x.times do |i|
        if i < (x/2)
            puts space * sum + character + space * cont + character
            sum += 1
            cont -= 2
        elsif i > (x/2)
            puts space * sum + character + space * cont + character
            sum -= 1
            cont += 2
        else
            puts " " * (x / 2) + character
            sum = x / 2 - 1
            cont = 1
        end
    end
end

def numero_cero(n)

end

letra_o(n)
letra_i(n)
letra_z(n)
letra_x(n)
# numero_cero(n)