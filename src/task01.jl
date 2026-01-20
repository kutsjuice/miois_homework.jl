export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    y = a
    result = []
    while (y/10) >= 1
        push!(result, y%10)
        y = y÷10
    end
    push!(result, y)
    return result[end:-1:1]
end

function touppercase(str_)
    return uppercase(str_)
end

function my_uppercase(str_)
    result = []
    for letter in str_
        if 'a' ≤ letter ≤ 'z'
            push!(result, letter - 32)
        else
            push!(result, letter)
        end
    end
    return result
end


function firstnorm(vec_::AbstractVector{<:Number})
    return sum(abs.(vec_))
end


function secondnorm(vec_::AbstractVector{<:Number})
    result = 0
    for i in vec_
        result += i^2
    end
    return sqrt(result)
end


function infnorm(vec_::AbstractVector{<:Number})
    result = 0;
    for num in vec_
        abs_num = abs(num)
        if abs_num > result
            result = abs_num;
        end
    end
    return result;
end

function firstnorm(mat_::AbstractMatrix{<:Number})
    result = 0;
    for col in eachcol(mat_)
        col_sum = sum(abs.(col))
        if col_sum > result
            result = col_sum
        end
    end
    return ret
end

function infnorm(mat_::AbstractMatrix{<:Number})
    result = 0
    for row in eachrow(mat_)
        row_sum = sum(abs.(row))
        if row_sum > ret
            result = row_sum
        end
    end
    return ret
end


function isleap(year)
    if (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
        return true
    end
    return false
end

chesscolor(c1,c2) = (c1[1] + c1[2] + c2[1] + c2[2]) % 2 == 0
