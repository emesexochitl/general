# Wilcoxon test for circs.

######################################################
# exonnum = 9
# 
# circ_num = circ_av[ which(circ_av$V2 == exonnum), ]
# circ_num = circ_num$V3
# 
# lin_num = lin_av[ which(lin_av$V2 == exonnum), ]
# lin_num = lin_num$V3

##### Special for <=10:

circ_num = circ_av[ which(circ_av$V2 >= 10), ]
circ_num = circ_num$V3

lin_num = lin_av[ which(lin_av$V2 >= 10), ]
lin_num = lin_num$V3


wilcox.test(circ_num, lin_num, "two.sided")
wilcox.test(circ_num, lin_num, "less")
wilcox.test(circ_num, lin_num, "greater")

######################################################

anova_av3 <- all_av3
colnames(anova_av3) <- c("Type", "Iso_ID", "Iso_num", "Length")
interaction.plot(anova_av3$Type, anova_av3$Iso_num, anova_av3$Length)
interaction.plot(anova_av3$Iso_num, anova_av3$Type, anova_av3$Length)
results <- lm(Length ~ Iso_num + Type + Iso_num*Type,data=anova_av3)
anova(results)


library(multcomp)
tx <- with(anova_av3, interaction(Iso_num, Type))
amod <- aov(Length ~ tx, data=anova_av3)
tuk <- glht(amod, linfct = mcp(tx = "Tukey"))
tuk.cld <- cld(tuk)
tuk.cld
opar <- par(mai=c(0.5,0.5,3.5,0.5))
plot(tuk.cld)
summary(tuk)
