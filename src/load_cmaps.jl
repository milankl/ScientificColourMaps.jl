cmap_names = readdir("data")

for name in cmap_names
    @eval begin
        $(Symbol(name)) = ColorMap($name,readdlm(joinpath("data",$name,$name*".txt")))
    end
end
