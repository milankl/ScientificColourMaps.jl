using PyPlot, .ScientificColourMaps

cmaps = [acton,bamako,batlow,berlin,bilbao]

gradient = collect(0:256)
G = cat(dims=2,gradient,gradient)'

fix,axs = subplots(5,1)

for i in 1:5
    axs[i].imshow(G,aspect="auto",cmap=cmaps[i])
    axs[i].set_xticks([])
    axs[i].set_yticks([])
    axs[i].set_ylabel(cmaps[i].name)
end
