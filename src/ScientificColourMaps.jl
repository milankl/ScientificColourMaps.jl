module ScientificColourMaps

    using PyPlot, DelimitedFiles

    path = @__DIR__
    cmap_names = readdir(joinpath(path,"data"))

    for name in cmap_names
        @eval begin

            # standard colour maps
            global $(Symbol(name)) = ColorMap($name,readdlm(joinpath(path,"data",$name,$name*".txt")))
            export $(Symbol(name))

            # CategoricalPalettes
            pathCP = joinpath(path,"data",$name,"CategoricalPalettes")
            if isdir(pathCP)
                global $(Symbol(name*"S")) = ColorMap($name*"S",readdlm(joinpath(pathCP,$name*"S.txt")))
                export $(Symbol(name*"S"))
            end
        end
    end
end
