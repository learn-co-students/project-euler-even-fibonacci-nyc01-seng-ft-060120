# Implement your object-oriented solution here!

class EvenFibonacci
    @lim
    @all_fibs
    def initialize(lim)
        @lim=lim
        @all_fibs=[1,2]
        while ((@all_fibs[@all_fibs.length-1]+@all_fibs[@all_fibs.length-2]) <= @lim) do
            @all_fibs << @all_fibs[@all_fibs.length-1]+@all_fibs[@all_fibs.length-2]
        end
    end
    def sum
        @all_fibs.reduce(0) { |s, e|
            e%2==0 ? s+e : s
        }
    end
end
