# Implement your procedural solution here!

def even_fibonacci_sum(lim)
    allFibs = [1,2]
    while ((allFibs[allFibs.length-1]+allFibs[allFibs.length-2]) <= lim) do
        allFibs << allFibs[allFibs.length-1]+allFibs[allFibs.length-2]
    end
    puts allFibs
    allFibs.reduce(0) { |s, e|
        e%2==0 ? s+e : s
    }
end