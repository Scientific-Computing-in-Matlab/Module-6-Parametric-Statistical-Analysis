%% Pairwise 



%% A. Compare the speed of the two solutions using the tic and toc commands.
% Try different number of samples. 
nrSamples =1000;
X = randn(1,nrSamples);
tic;
pwV = pairwseVectorized(X);
timeForVectorized = toc


%% B. Write a function that creates all pairwise differences between the elements of a vector using for-loops. 
function delta = pairwiseLoop(x)

end

%% C. Bonus Assignment. 
% Extend the pairwiseVectorized function to compute the pairwise product 
% of two elements of x, or any function of two elements of x.




function delta = pairwseVectorized(x)
% The vectorized function. Copied from twosample.mlx
% x - vector of numbers
% delta  - all pairwise differences between the elements of x.

x           = x(:)';                  % Make sure it is a row
nrX         = numel(x);       
X           = repmat(x,[nrX 1]);      % Replicate to create a matrix
delta       = X-X';                   % All differences  but the same above and below diagonal.  
[col,row]   = meshgrid(1:nrX,1:nrX);  % Subscripts into delta matrix
delta(col==row) =[];                  % Remove the diagonal
end

