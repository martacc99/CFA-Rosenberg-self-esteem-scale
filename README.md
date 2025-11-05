# CFA-Rosenberg-self-esteem-scale

This project conducts a Confirmatory Factor Analysis (CFA) to evaluate and compare different factorial structures of the Rosenberg Self-Esteem Scale (RSES). The analysis tests three theoretical models:

- Rosenberg's original unidimensional model
- Kaplan & Pokorny's two-factor model (Positive Self-Esteem & Negative Self-Esteem)
- Kaufman et al.' two-factor model (General Self-Evaluations & Transitory Self-Evaluations)

Data Source
- The dataset was obtained from: https://openpsychometrics.org/_rawdata/

Sample Characteristics:

- Total Participants: 5,000
 - Gender Distribution: 2,287 males, 2,635 females
 - Geographic Diversity: 111 countries
- Scale: 10 items rated on a 4-point Likert scale

Methodology
- Tools & Libraries: R, lavaan, semPlot, psych, GPArotation

Analytical Approach:

  - Exploratory Data Analysis with descriptive statistics and parallel analysis
  - Confirmatory Factor Analysis using WLSMV estimation
  - Goodness-of-fit evaluation (CFI, TLI, RMSEA, SRMR)
  - Model modification based on modification indices

Files
  REPORT_ES.pdf: Full project report in Spanish
  
  CFA Rosenberg.R: Complete R script for analysis
  
  data.csv: Raw data (download from source above)


References
Rosenberg (1965); Kaplan & Pokorny (1969); Kaufman et al. (1991); Hu & Bentler (1999)
