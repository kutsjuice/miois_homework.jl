using MioisHomework
using Test

@testset "getdigits" begin
    @test getdigits(1234) == [1, 2, 3, 4];
    @test getdigits(0123) == [1, 2, 3];
    @test getdigits(999999999999) == [9,9,9,9,9,9,9,9,9,9,9,9];
end