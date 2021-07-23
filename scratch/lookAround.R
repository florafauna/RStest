try(detach("package:ReplicationSuccess", unload=TRUE), silent=TRUE)
system("make -C .. lib")
library("ReplicationSuccess", lib.loc = "../lib/")
library(devtools)
check_win_devel("..")


sampleSizeReplicationSuccess(p2z(0.0023, alternative="two.sided"),
                             power=0.8, type="nominal", designPrior="predictive")

