function v= randexg(sz,mu,sigma,tau)
% Generate randum numbers from the Ex-Gaussian PDF. 
% 
% INPUT 
% sz = size of the array of random numbers
% mu = mean of the Ex-Gaussian (milliseconds)
% sigma = sigma of the Ex-Gaussian (milliseconds)
% tau = tau of the Ex-Gaussian (milliseconds)
% 
% OUTPUT
%  v = array with size sz representing random variables drawn from the
%       Ex-Gaussian PDF
% 
%  BK - OCT 2020.

MAXRANGE  = 5;  % PDF is essentially zero at this times mu
RESOLUTION  = 1; % 1= 1ms.
rt = (1:RESOLUTION:MAXRANGE*ceil(mu))'; % Evaluating PDF/cdf at 1 ms 
pdf = exgaussianpdf(rt,mu,sigma,tau);
cdf = cumtrapz(rt,pdf);
ind=[true; not(diff(cdf)==0)];
cdf=cdf(ind);
rt=rt(ind);
r=rand(sz);
v=interp1(cdf,rt,r(:)','linear');
v =reshape(v,sz);