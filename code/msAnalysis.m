%% Multiple Sclerosis Analysis

%% Read the data
% The msData.mat file contains a table T, with:
% 
% T.latency  - measured VEP  latency 
% T.subject -  ID of the subject.   Subject ID's 25 or smaller correspond to MS patients, subjects IDs larger than 25 are healthy controls.
% T.type    - describes the kind of stimulus used for that row.
%   The researchers used three kinds of stimuli:
% type 1  was black and white and mainly drove the magnocellular visual pathway.
% type 2 was a red/green pattern that mainly drove the parvocellular pathway
% type 3 was a blue/yellow pattern that mainly drives the koniocellular pathway.


%% Preprocess
% Hints: 
%   Add a table column that identifies who has MS and who does not.
%   Check carefully which variables should be categorical.

%% Do LMM Analysis
% Hints: 
%   Identify which fixed-effects to use and which random effects to include.
%   Answer the research questions:
%  - How different are the VEP latencies in the three pathways?
%  - Does MS affect VEP latency? How strong is this effect?  Is this effect pathway-specific? 


%% Generate output that can be pasted into a paper.
%
% The script should also generate one or two succinct sentences answering the research questions using the traditional ANOVA style reporting 
% (i.e. use the LinearMixedModel but report the statistics associated with each main effect and interaction), and relevant statistics  (e.g., F(df1,df2,) = XX, p=xx). 
%
% Hints: 
%   Use fprintf to construct a sentence with the effect estimates and statistics.


