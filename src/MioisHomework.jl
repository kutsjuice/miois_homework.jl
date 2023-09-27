module MioisHomework

export getdigits

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

end