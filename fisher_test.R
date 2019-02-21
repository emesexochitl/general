# Fishers exact test

######################################################

intronnum = 7


circ1 = nrow(circ_av[ which(circ_av$V2 == intronnum), ])
circtotal = 1609
circ2= circtotal - circ1

lin1= nrow(lin_av[ which(lin_av$V2 == intronnum), ])
lintotal= 54013
lin2= lintotal - lin1

ct <- matrix(c(circ1, circ2, lin1, lin2), nrow = 2, ncol = 2)

#ct <- matrix(c(374, 2793+51, 1117915, 2815578+4364891), nrow = 2, ncol = 2)

colnames(ct) <- c("y", "n")
rownames(ct) <- c("inv", "rest")
ct
fisher.test(ct, alternative = "two.sided")
fisher.test(ct, alternative = "greater")
fisher.test(ct, alternative = "less")


