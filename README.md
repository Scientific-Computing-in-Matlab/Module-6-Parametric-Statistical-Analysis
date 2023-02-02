# Module-5 Parametric Statistical Analysis

In current practice, data analysis ends with an assessment of statistical significance. In this module we'll look at some of the more established methods (ANOVA), which you'll need to know to understand the published literature, as well as some improved methods (linear mixed effects models).

## Objectives

At the end of the module you will be able to 

- Perform traditional T-tests and ANOVAs in Matlab
- Explain the computations underlying the ANOVA
- Use Monte Carlo simulations to probe the properties of a statistical test.
- Use linear mixed effects models for common experimental designs in neuroscience.
- Be able to explain why mixed effects models are better than traditional ANOVA

## Materials

1. Start by reading and exploring code that helps understand the basics of the traditional analyses of variance in the following MLX files:
  - `./docs/onesample.mlx`
  - `./docs/twosample.mlx`
  - `./docs/anova.mlx`
1. Llinear mixed models (LMM) are a more modern and better approach, that you should  use in your own projects. These two MLX files explain how to perform LMM analyses in Matlab:
  - `./docs/linearmixedmodelspart1.mlx`
  - `./docs/linearmixedmodelspart2.mlx`
1. [This video](https://youtu.be/OOaofQ1WkcM) does a walkthrough to explain the output of fitlme.
1. After completing the Linear Mixed Models assignments (below) the `./docs/linearmixedmodelspart3.mlx` helps to understand how to use the model to make predictions and how to compare model parameters with each other.
1. [This video](https://www.youtube.com/watch?v=QCqF-2E86r0&t=33s) discusses linear mixed effects models at a conceptual level and in particular  the difference of fixed vs. random effects. 

## Assignments

1. **Power & Sample Size**.  The power of a statistical tets depends on the effect size, the number of measurements, and the type of test (e.g., parametric vs. non-parametric). Follow the starter code in `./code/powerAnalysis.m` to investigate this, and visualize  your findings. 
1. ** Pairwise differences**. The code in `./docs/twosample.mlx` shows a quick, vectorized way to generate all pairwise differences between the elements of two vectors. For instance, if we had vectors x and y, this creates x(1)-y(1), x(1)-y(2), ... x(2)-y(2),..etc.  Make sure you understand this code. Inspect the output of each of the lines, read the help for repmat, and try-out the code snippet on some small vectors of your own chosing. Note that this is a general solution that can also work for pairwise sums, products, etc. Your assigment is to write code that compares this vectorized approach to a for-loop. The `./code/pairwise.m` file has the starter code and instructions.
1. **Linear Mixed Models**.  In Multiple Sclerosis, the immune system attacks the myelin sheath and this leads to faulty signal transduction along the optic tract and nerve. Of the three visual pathways, the magnocellular pathway is myelinated most strongly, hence one would expect that MS affects that pathway most.  The  `./data/msData.mat` file contains a table (T) with data from an experiment investigating the latency of visually evoked potentials in people living with multiple sclerosis (MS) and healthy controls. The researchers used different visual patterns to probe the three visual pathways to answer several questions.
  - How different are the VEP latencies in the three pathways?
  - Does MS affect VEP latency? How strong is this effect?  Is this effect pathway-specific? 

Your assignment is to update  the `./code/msAnalysis.m` script (with the usual attention to structure, style, and documentation) that loads these data from the file and then uses a linear mixed-effects model to answer these questions. 


