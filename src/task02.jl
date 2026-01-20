function arraysum(ar::AbstractVector{<:Number})::Float64
    sum = 0;
    for x in ar
        sum+= x
    end
    return sum;
end

function mul35sum(N::Integer)::Int64
    sum = 0
    for i in 1:(N-1) 
        if i % 3 == 0 || i % 5 == 0
            sum += i
        end
    end
    return total
end
