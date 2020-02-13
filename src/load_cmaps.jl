path = @__DIR__
cmap_names = readdir(joinpath(path,"data"))

for name in cmap_names
    @eval begin
        global $(Symbol(name)) = ColorMap($name,readdlm(joinpath(path,"data",$name,$name*".txt")))
    end
end
