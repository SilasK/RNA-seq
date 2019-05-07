# This is an example of using my package


source("RNAseq.R")



counts= read.table("./Results/raw_counts.txt",header = T,row.names = 1)


outfolder='analysis'


Comparisons= list( list("Group1",	"Group2"), 
                list("Grpup2","Group3") 
                   )

FC= diff_analysis(outfolder,Comparisons, counts,min_count=5)


# pathway

#FC= read.delim("Foldchanges.tsv",row.names = 1)
fold_change=rename_labels_df(FC)["Grpup3_vs_Grpup2"]

pathway_analysis(fold_change, outfolder")



# plot pathway

plot_kegg_pathway(FC = fold_change,keggrespathways = c("mmu04146"),outfolder = outfolder)

