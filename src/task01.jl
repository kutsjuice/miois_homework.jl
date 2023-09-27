export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    ret = [];
    b = a;
    while (b/10) > 1
        push!(ret, b%10);
        b = b÷10;
    end
    push!(ret, b);
    return ret[end:-1:1];
end

function touppercase(str_)
    buf = [];
    for sym in str_
        if (sym>='a')&&(sym<='z')
            push!(buf, sym + ('A' - 'a'));
        else
            push!(buf, sym);
        end
    end
    return join(buf);
end

function firstnorm(vec_::AbstractVector{<:Number})
    ret = 0;
    for num in vec_
        ret += abs(num);
    end
    return ret;
end

function secondnorm(vec_::AbstractVector{<:Number})
    ret = 0;
    for num in vec_
        ret += num^2;
    end
    return sqrt(ret);
end

function infnorm(vec_::AbstractVector{<:Number})
    ret = 0;
    for num in vec_
        if num > ret
            ret = num;
        end
    end
    return ret;
end

function firstnorm(mat_::AbstractMatrix{<:Number})
    ret = 0;
    for col in eachcol(mat_)
        buf = 0
        for el in col
            buf += el;
        end
        ret = ret < buf ? buf : ret;
    end
    return ret;
end

function infnorm(mat_::AbstractMatrix{<:Number})
    ret = 0;
    for col in eachrow(mat_)
        buf = 0
        for el in col
            buf+=el;
        end
        ret = ret < buf ? buf : ret;
    end
    return ret;
end

function isleap(year)
    if (year % 400) == 0
        return true;
    elseif (year % 100) == 0
        return false
    elseif (year % 4) == 0
        return true
    end
    return false;
end

function chesscolor(cell1, cell2)
    a = cell1[1] - 'a' + 1;
    b = cell1[2];

    c = cell2[1] - 'a' + 1;
    d = cell2[2];

    if ((a+b+c+d) % 2) == 0
        return true;
    end
    return false; 
end