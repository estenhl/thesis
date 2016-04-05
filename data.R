data_set_names = c("mhc1.fa", "primary.fasta", "20k.fasta", "35k.fasta", "100k.fa", "150k.fa")
data_set_sizes = c(701, 3416, 20931, 37801, 100351, 152451)

build_index_total_time = c(597127494, 2050636347, 13858701254, 25401423058, 77928851412, 122654330941)
build_index_graph_time = c(9404263, 51489024, 623903806, 1031820116, 5487825644, 11328920839)
build_index_index_time = c(65184733, 138556745, 269431681, 2788165703, 6905517064, 10007919085)
build_index_write_time = c(522174790, 1860265733, 12965055922, 21581107294, 65535179527, 101317180800)
sga_index_time = c(1084061528,1413392861, 1170720445,1217015044)

options(scipen=100000)
plot.new()
plot(data_set_sizes, build_index_total_time/1000, main="Total time", xlab="Number of vertices", ylab="Milliseconds", pch=16, col="black")
lines(data_set_sizes, build_index_total_time/1000, col="black")

plot(data_set_sizes, build_index_graph_time/1000, main="Build graph", xlab="Number of vertices", ylab="Milliseconds",  pch=16, col="blue")
lines(data_set_sizes, build_index_graph_time/1000, col="blue")

plot(data_set_sizes, build_index_index_time/1000, main="Build index", xlab="Number of vertices", ylab="Milliseconds",  pch=16, col="green")
lines(data_set_sizes, build_index_index_time/1000, col="green")

plot(data_set_sizes, build_index_write_time/1000, main="Write index", xlab="Number of vertices", ylab="Milliseconds",  pch=16, col="red")
lines(data_set_sizes, build_index_write_time/1000, col="red")

plot.new()
plot(data_set_sizes, build_index_total_time/1000, type="n", main="Individual constituents", xlab="Number of vertices", ylab="Milliseconds")
lines(data_set_sizes, build_index_total_time/1000, col="red")
par(new=T)
lines(data_set_sizes, build_index_graph_time/1000,col="blue")
lines(data_set_sizes, (build_index_graph_time/1000) + (build_index_index_time/1000), col="green")
polygon(c(data_set_sizes, rev(data_set_sizes)), c(build_index_graph_time/1000, rep(0, length(data_set_sizes))), col="blue", border=NA)
polygon(c(data_set_sizes, rev(data_set_sizes)), c((build_index_graph_time/1000) + (build_index_index_time/1000), rev(build_index_graph_time/1000)), col="green", border=NA)
polygon(c(data_set_sizes, rev(data_set_sizes)), c(build_index_total_time/1000, rev((build_index_graph_time/1000) + (build_index_index_time/1000))), col="red", border=NA)
par(new=T)
legend(x=0, y=120000000, col=c("red", "green", "blue"), legend=c("Write index", "Build index", "Build graph"), pch=c(15, 15, 15))
