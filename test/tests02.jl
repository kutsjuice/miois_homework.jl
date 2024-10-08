@testset "arraysum" begin
    @test arraysum(1:10) == sum(1:10)
end

@testset "Multiples of 3 or 5" begin
    @test mul35sum(10) == 23;
end