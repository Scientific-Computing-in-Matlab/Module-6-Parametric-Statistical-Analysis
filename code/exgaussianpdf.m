function v = exgaussianpdf(x,mu,sigma,tau)
% ex-gaussian pdf
% Often used to fit reaction time distributions.
%
% INPUT
% x -  value
% mu  - Parameters of the ex-gaussian (mean of gaussian part)
% sigma  - stdev of the gaussian part
% tau  - decay of the exponential part.
% OUTPUT
% v = pdf at x.
%
% BK Apr 2020
ncdf = @(x) 0.5*(1+erf(x/sqrt(2)));
v = (1/tau).*exp((mu/tau)+(sigma^2/(2*tau^2))-(x/tau)).*ncdf( (x-mu-(sigma^2/tau))./sigma);