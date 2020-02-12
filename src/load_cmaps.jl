cmap_names = readdir("data")

for name in names
    @eval begin
        $(Symbol(name)) = ColorMap($name,readdlm(joinpath("data",$name,$name*".txt")))
    end
end
