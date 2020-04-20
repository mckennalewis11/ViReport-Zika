require(treedater)
tree <- ape::read.tree('/Users/mckennalewis/Desktop/ViReport/firstDir/output_files/rooted.tre')
seqlen <- 11585
times_tab <- read.csv('/Users/mckennalewis/Desktop/ViReport/firstDir/intermediate_files/treedater/times_treedater.txt', header=FALSE)
times <- setNames(times_tab[,2], times_tab[,1])
out <- dater(tree, times, seqlen, clock='uncorrelated', numStartConditions=0)
write.tree(out, '/Users/mckennalewis/Desktop/ViReport/firstDir/output_files/dated.tre')
