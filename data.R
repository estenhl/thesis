rm(list = ls())

"""
THRESHOLD=ERRORS=0
READ_LENGTH = 100
Size: 500
Brute force time: 13330523
Fuzzy search time: 3101652
Error percentage: 0.0
Size: 1000
Brute force time: 5824165
Fuzzy search time: 627906
Error percentage: 0.0
Size: 5000
Brute force time: 25872839
Fuzzy search time: 339551
Error percentage: 0.0
Size: 10000
Brute force time: 57106785
Fuzzy search time: 286567
Error percentage: 0.0
Size: 50000
Brute force time: 292224041
Fuzzy search time: 220502
Error percentage: 0.0
Size: 100000
Brute force time: 691012432
Fuzzy search time: 207784
Error percentage: 0.0
"""
size = c(500, 1000, 5000, 10000, 50000, 100000)
fuzzy = c(3101652, 627906, 339551, 286567, 220502, 207784)
brute = c(13330523, 5824165, 25872839, 57106785, 292224041, 691012432)
errors = c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
plot.new()
par(mfrow=c(1, 1)) # all plots on one page 
plot(size, fuzzy, type="n", xlab="Number of nodes", ylab="Nanoseconds", xlim=range(c(0, max(size))), ylim=range(c(0, max(brute))), main="Runtimes as a function of graph size (Threshold=0, errors=0)", col="black")
lines(size, fuzzy, type="l", col="blue")
lines(size, brute, type="l", col="red")
par(new = T)
plot(size, errors, type="n", axes=F, xlab=NA, ylab=NA, xlim=range(c(0, max(size))), ylim=range(c(0, 1)))
lines(size, errors, lty=2)
axis(side = 4)
legend(x=0.9, y=0.9, col=c("red", "blue", "black"), legend=c("Brute force", "Fuzzy search", "Error rate"), lty=c(1, 1, 2))

"""
THRESHOLD=ERRORS=2
READ_LENGTH = 100
Size: 500
Brute force time: 5426235
Fuzzy search time: 6133741
Error percentage: 0.0
Size: 1000
Brute force time: 5041994
Fuzzy search time: 2032385
Error percentage: 0.0
Size: 5000
Brute force time: 25264503
Fuzzy search time: 1847812
Error percentage: 0.0
Size: 10000
Brute force time: 51550131
Fuzzy search time: 1921352
Error percentage: 0.0
Size: 50000
Brute force time: 288717851
Fuzzy search time: 1988712
Error percentage: 0.0
Size: 100000
Brute force time: 691212234
Fuzzy search time: 2327468
Error percentage: 0.0
"""

size = c(500, 1000, 5000, 10000, 50000, 100000)
fuzzy = c(6133741, 2032385, 1847812, 1921352, 1988712, 2327468)
brute = c(5426235, 5041994, 25264503, 51550131, 288717851, 691212234)
errors = c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
plot.new()
par(mfrow=c(1, 1)) # all plots on one page 
plot(size, fuzzy, type="n", xlab="Number of nodes", ylab="Nanoseconds", xlim=range(c(0, max(size))), ylim=range(c(0, max(brute))), main="Runtimes as a function of graph size (Threshold=2, errors=2)", col="black")
lines(size, fuzzy, type="l", col="blue")
lines(size, brute, type="l", col="red")
par(new = T)
plot(size, errors, type="n", axes=F, xlab=NA, ylab=NA, xlim=range(c(0, max(size))), ylim=range(c(0, 1)))
lines(size, errors, lty=2)
axis(side = 4)
legend(x=0.9, y=0.9, col=c("red", "blue", "black"), legend=c("Brute force", "Fuzzy search", "Error rate"), lty=c(1, 1, 2))

"""
THRESHOLD=2, ERRORS=3%
READ_LENGTH = 100
Size: 500
Brute force time: 6047091
Fuzzy search time: 5930453
Error percentage: 0.04
Size: 1000
Brute force time: 4969514
Fuzzy search time: 2167942
Error percentage: 0.08
Size: 5000
Brute force time: 26725663
Fuzzy search time: 1933003
Error percentage: 0.04
Size: 10000
Brute force time: 53345951
Fuzzy search time: 1949821
Error percentage: 0.12
Size: 50000
Brute force time: 292582920
Fuzzy search time: 2156555
Error percentage: 0.08
Size: 100000
Brute force time: 620957213
Fuzzy search time: 2942975
Error percentage: 0.08
"""

size = c(500, 1000, 5000, 10000, 50000, 100000)
fuzzy = c(5930453, 2167942, 1933003, 1949821, 2156555, 2942975)
brute = c(6047091, 4969514, 26725663, 53345951, 292582920, 620957213)
errors = c(0.04, 0.08, 0.04, 0.12, 0.08, 0.08)
plot.new()
par(mfrow=c(1, 1)) # all plots on one page 
plot(size, fuzzy, type="n", xlab="Number of nodes", ylab="Nanoseconds", xlim=range(c(0, max(size))), ylim=range(c(0, max(brute))), main="Runtimes as a function of graph size (Threshold=2, errors=3% probability)", col="black")
lines(size, fuzzy, type="l", col="blue")
lines(size, brute, type="l", col="red")
par(new = T)
plot(size, errors, type="n", axes=F, xlab=NA, ylab=NA, xlim=range(c(0, max(size))), ylim=range(c(0, 1)))
lines(size, errors, lty=2)
axis(side = 4)
legend(x=0.9, y=0.9, col=c("red", "blue", "black"), legend=c("Brute force", "Fuzzy search", "Error rate"), lty=c(1, 1, 2))

"""
GRAPH_SIZE=10k, errors=3%
Brute time: 62899509
Threshold: 0.0
Time: 1525380
Error percentage: 0.94
Threshold: 1.0
Time: 1303611
Error percentage: 0.3
Threshold: 2.0
Time: 2619314
Error percentage: 0.04
Threshold: 3.0
Time: 11135399
Error percentage: 0.0
Threshold: 4.0
Time: 259940297
Error percentage: 0.0

"""
threshold=c(0, 1, 2, 3, 4)
brute=c(rep(62899509, length(threshold)))
fuzzy=c(1525380, 1303611, 2619314, 11135399, 259940297)
errors=c(0.94, 0.3, 0.04, 0.0, 0.0)
plot.new()
par(mfrow=c(1, 1)) # all plots on one page 
plot(threshold, fuzzy, type="n", xlab="Threshold", ylab="Nanoseconds", xlim=range(c(0, max(threshold))), ylim=range(c(0, max(fuzzy))), main="Runtimes as a function of threshold (Graph size=10k, errors=3% probability)", col="black")
lines(threshold, fuzzy, type="l", col="blue")
lines(threshold, brute, type="l", col="red")
par(new = T)
plot(threshold, errors, type="n", axes=F, xlab=NA, ylab=NA, xlim=range(c(0, max(threshold))), ylim=range(c(0, 1)))
lines(threshold, errors, lty=2)
axis(side = 4)
legend(x=0.1, y=0.9, col=c("red", "blue", "black"), legend=c("Brute force", "Fuzzy search", "Error rate"), lty=c(1, 1, 2))


# Heatmap of m/n
require(gplots)
plot.new()
my_palette <- colorRampPalette(c("green", "yellow", "red"))(n = 299)
mat_data = matrix(c(0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,1.0,0.38095238095238093,0.0,0.0,0.0,0.0,1.0,0.8333333333333334,0.125,0.0,0.0,0.0,1.0,0.9,0.4117647058823529,0.0,0.0,0.0,1.0,1.0,0.4,0.0,0.0,0.0), nrow=6, ncol=6)
heatmap.2(mat_data, col=my_palette, cellnote=round(mat_data, digits=2), Rowv=FALSE, Colv=FALSE,  xlab="Edit distance", ylab="Threshold", key=FALSE, hline=F, vline=F, main="Wrongly mapped reads")
# Sharing context probability for length=11

require(gplot)
colors = c("red", "blue", "green", "yellow", "purple", "black")
sizes = c(500, 5000, 50000, 500000, 5000000, 50000000)
plot.new()
curve(1.0-exp(-sizes[1]**2/4**x), from=1, to=30, col=colors[1], xlab="Context length", ylab="Probability of shared contexts", main="Estimated probability of shared contexts")
for (i in 2:6) {
  par(new=T)
  curve(1.0-exp(-sizes[i]**2/4**x), from=1, to=30, col=colors[i], xlab="", ylab="")
}
par(new=T)
curve(0.01+(x-x), from=1, to=30, lty=2, ylim=range(c(0, 1)), ylab="", xlab="")
legend(x=0.2, y=0.9, legend=c(sizes, "Threshold"), col=c(colors, "black"), lty=c(rep(1, length(sizes)), 2), title="Number of contexts")
