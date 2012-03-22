
## NOTE: anything on a line after a ``hash'' (i.e. a #) is ignored by R 
## If this file is saved in the R working directory, simply use
## source("prob-dist-ord-diags.R") to generate the graphs and PDFs

par(mfrow=c(1,1))  ## ensures we have a single graph in the window to start with
x=0:12
plot(x,dbinom(x,12,.5),type="h")
dev.print(dev=pdf,file="binom-probs.pdf")

par(mfrow=c(3,2))  ## divides the graph window into a 3-by-2 grid, and fills along ``rows''

jvec=c(6,8,10,15,25,50)
for(j in jvec){
  b=w=j
  d=dhyper(x,b,w,12)
  plot(x,d,type="h")
  title(paste("hypergeom. probs with n=12, b=w=",j,sep=""))
}

dev.print(dev=pdf,file="hypergeom-probs.pdf")


ivec=c(1,2,4,8,16,32)
n=12
for (i in ivec){
  b=w=i
  d=choose(w-1+x,x)*choose(b-1+n-x,n-x)/choose(w+b-1+n,n)    # beta binom prob dist
  plot(x,d,type="h")
  title(paste("betabinom probs with n=12, b=w=",i,sep=""))
 }

dev.print(dev=pdf,file="betabinom-probs.pdf")

