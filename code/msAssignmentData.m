%% Script to generate fake data for the MS assignment in Linear Mixed Models
nrMS = 25;
nrHC = 23;
types = [1 2 3]; % numeric types for magno, parvo,konio 
nrTypes = numel(types);
meanLatency = [93 106 107; 150 145 143];
stdLatency = [14 11 10; 15 10 13];
subject = repmat([1:nrMS nrMS+(1:nrHC)],[1 nrTypes])';
type = repmat(types,[nrMS+nrHC 1]);
type = type(:);
T = table(subject,type);
isMS = T.subject<=nrMS;
ix= sub2ind(size(meanLatency),isMS+1,T.type);
latency = meanLatency(ix) + stdLatency(ix).*randn(size(ix));
T=addvars(T,latency);