%% Power Analysis 
%


%% A. Effect size and number of samples
% Following the example in ../docs/onesample.mlx, simulate T-tests for different nrMeasurements, and different effect sizes (mean eye position). 
% You can, for instance, use two nested for-loops to do this. 
% Show the fraction of false negatives as a 2D colormap (use imagesc). 




%% B. Power of Non-Parametric Tests
% The sign test tests whether a sample has a **median** that is different from zero. 
% This is a so-called non-parametric test, which means that it does not make the assumption that 
% the underlying distribution of the measurement errors is normal. One price to pay for this is reduced power. 
% Investigate the power of the sign test (signtest), for instance for different effect sizes, or different numbers of measurements, 
% Compare these results (in a single figure) to the power of the T-test for
% the same data. Use scatter or plot.