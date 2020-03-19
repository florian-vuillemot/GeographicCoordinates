using Test

import GeographicCoordinates.GeographicCoordinate
import GeographicCoordinates.TupleOfGeographicCoordinates


@testset "GeographicCoordiante" begin
    @testset "Constructor" begin
        latitude = 3.4
        longitude = 4.3
        elevation = 3.2

        g = GeographicCoordinate(latitude, longitude, elevation)
        @test g.latitude == latitude
        @test g.longitude == longitude
        @test g.elevation == elevation
    end
end


@testset "Tuple of geographic coordinates" begin
    @testset "Constructor from GeographicCoordiante" begin
        x = GeographicCoordinate(3.2, 4.3, 12)
        y = GeographicCoordinate(3.4, 1, 5.2)

        g = TupleOfGeographicCoordinates(x, y)
        @test g.x == x
        @test g.y == y
    end

    @testset "Constructor from GeographicCoordiante" begin
        xlatitude = 3.2
        xlongitude = 4.2
        xelevation = 12
        
        ylatitude = 3.1
        ylongitude = 9
        yelevation = 9.9

        g = TupleOfGeographicCoordinates(xlatitude, xlongitude, xelevation, ylatitude, ylongitude, yelevation)
        @test g.x.latitude == xlatitude
        @test g.y.latitude == ylatitude
        @test g.x.longitude == xlongitude
        @test g.y.longitude == ylongitude
        @test g.x.elevation == xelevation
        @test g.y.elevation == yelevation
    end
end
