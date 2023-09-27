using MioisHomework
using Test
import LinearAlgebra as LA

@testset "getdigits" begin
    @test getdigits(1234) == [1, 2, 3, 4];
    @test getdigits(0123) == [1, 2, 3];
    @test getdigits(999999999999) == [9,9,9,9,9,9,9,9,9,9,9,9];
end

@testset "touppercase" begin
    @test touppercase("julia") == "JULIA";
    @test toappercase("hello World") == "HELLO WORLD";
    @test toappercase("dsfdsf43243HH,,.sdfd&*(&(*HGJSdsghfdsjkh***))") == uppercase("dsfdsf43243HH,,.sdfd&*(&(*HGJSdsghfdsjkh***))");
end

@testset "norms" begin
    a = rand(10);
    @test firstnorm(a) == LA.norm(a,1);
    @test secondnorm(a) == LA.norm(a, 2);
    @test infnorm(a) == LA.norm(a, Inf);
    b = rand(10, 10);
    @test firstnorm(b) == LA.opnorm(b, 1);
    @test infnorm(b) == LA.opnorm(b, Inf);
end