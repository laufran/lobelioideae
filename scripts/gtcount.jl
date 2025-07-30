using CSV
using DataFrames
using DelimitedFiles

data = DataFrame(CSV.File("data/sampling_csvs/samples2024.csv"))
samples = data."sample" #get sample names into vector
gt_pct = [] #initialize
samplenamecount = 0 #initialize

f = open("data/newgts/all_singlecopy_orthologs_gene_trees.tre", "r")
gts = read(f, String) # read entire file into a string
close(f) #close iostream

#loop over samples, push to gt_pct vector
for sample in samples
    samplenamecount = count(sample, gts)/776
    push!(gt_pct,samplenamecount)
end

data.gts = gt_pct # replace gt_pct in df

#rewrite CSV
CSV.write("data/sampling_csvs/samples2024.csv", data)
