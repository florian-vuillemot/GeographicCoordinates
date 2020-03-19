module GeographicCoordinates

struct GeographicCoordinate
    latitude
    longitude
    elevation
    
    GeographicCoordinate(latitude, longitude, elevation) = new(latitude, longitude, elevation)
end

struct TupleOfGeographicCoordinates
    x::GeographicCoordinate
    y::GeographicCoordinate

    TupleOfGeographicCoordinates(x, y) = new(x, y)
    TupleOfGeographicCoordinates(xlatitude, xlongitude, xelevation, ylatitude, ylongitude, yelevation) = new(GeographicCoordinate(xlatitude, xlongitude, xelevation), GeographicCoordinate(ylatitude, ylongitude, yelevation));
end

end # module
