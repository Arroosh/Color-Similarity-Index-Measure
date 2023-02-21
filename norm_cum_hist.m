function [fCDF]= norm_cum_hist(Ctrs,X)


frq = hist(X, Ctrs);
%diff=Ctrs(2)-Ctrs(1);
fNorm = (frq/sum(frq));
fCDF = cumsum(fNorm);
 
