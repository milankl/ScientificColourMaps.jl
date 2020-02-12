using ScientificColourMaps
using PyPlot
using Test

cmaps = [ "acton"  ,"bamako" ,"batlow" ,"berlin" ,"bilbao" ,"broc"   ,"brocO"  ,"buda"   ,"cork",
"corkO"  ,"davos"  ,"devon"  ,"grayC"  ,"hawaii" ,"imola"  ,"lajolla","lapaz"  ,"lisbon" ,"nuuk",
"oleron" ,"oslo"   ,"roma"   ,"romaO"  ,"tofino" ,"tokyo"  ,"turku"  ,"vik"    ,"vikO"]

@testset "ColorMaps exist?" begin
    @testset for cmap in cmaps
        @eval begin
            @test typeof($(Symbol(cmap))) == ColorMap
        end
    end
end
