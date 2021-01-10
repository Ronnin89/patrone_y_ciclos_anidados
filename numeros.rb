n = ARGV[0].to_i

def letra_o(x)
    space = "\s"
    character = "*"
    for i in 1..x do
        puts character*x if i == 1
        puts character + (space*(x - 2)) + character if i != 1 && i != x
        puts character*x if i == x
    end
end

def letra_i(x)
    space = "\s"
    character = "*"
    for i in 1..x do
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
        inter_cont = x - 2
    else
        inter_cont = ( x - 2 ) + 1
    end
    ext_cont = 0
    x.times do |i|
        if i < (x/2)
            puts space * ext_cont + character + space * inter_cont + character       
            ext_cont += 1                                                        
            inter_cont -= 2
        elsif i > (x/2)
            puts space * ext_cont + character + space * inter_cont + character         
            ext_cont -= 1                                                        
            inter_cont += 2
        else
            puts space * (x / 2) + character
            ext_cont = x / 2 - 1                                                   
            inter_cont = 1
        end
    end
end

def numero_cero(x)
    character = "*"
    space = "\s"
    cont = 0
    space_size = x-2


    puts character*x 
    (x-2).times do
        puts character + (space * (cont)) + character + (space * (space_size-1)) + character
        space_size -= 1
        cont += 1
    end
    puts character*x
end

def navidad(x)
    character = "*"
    space = "\s"
    cont1 = 0
    cont2 = 3

    puts space * ((x / 2)+1) + character
    
    x.times do |i|
        if cont1 <= (x / 2)
            print space * (((x - x / 2) - i) - 1)
            for i in 1..cont2 do
                print space if i.even?
                print character if i.odd?
            end
            cont1 += 1
            cont2 += 2
            puts
        else
            puts space * ((x / 2) + 1) + character
        end
    end
print space
    for i in 1..x do
        print space if i.even?
        print character if i.odd?
    end
    puts
end

letra_o(n)
letra_i(n)
letra_z(n)
letra_x(n)
numero_cero(n)
navidad(n)